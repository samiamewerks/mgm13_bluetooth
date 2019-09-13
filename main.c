/***************************************************************************//**
 * @file
 * @brief Silicon Labs Empty Example Project
 *
 * This example demonstrates the bare minimum needed for a Blue Gecko C application
 * that allows Over-the-Air Device Firmware Upgrading (OTA DFU). The application
 * starts advertising after boot and restarts advertising after a connection is closed.
 *******************************************************************************
 * # License
 * <b>Copyright 2018 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

/* Board headers */
#include "init_mcu.h"
#include "init_board.h"
#include "init_app.h"
#include "ble-configuration.h"
#include "board_features.h"

/* Bluetooth stack headers */
#include "bg_types.h"
#include "native_gecko.h"
#include "gatt_db.h"

/* Libraries containing default Gecko configuration values */
#include "em_emu.h"
#include "em_cmu.h"
#include "em_usart.h"

/* Device initialization header */
#include "hal-config.h"

#if defined(HAL_CONFIG)
#include "bsphalconfig.h"
#else
#include "bspconfig.h"
#endif

/* Application header */
#include "app.h"

/* SPI driver */
#include "spidrv.h"

/***********************************************************************************************//**
 * @addtogroup Application
 * @{
 **************************************************************************************************/

/***********************************************************************************************//**
 * @addtogroup app
 * @{
 **************************************************************************************************/

#ifndef MAX_ADVERTISERS
#define MAX_ADVERTISERS 1
#endif

#ifndef MAX_CONNECTIONS
#define MAX_CONNECTIONS 4
#endif

#define  BUFLEN 100

uint8_t bluetooth_stack_heap[DEFAULT_BLUETOOTH_HEAP(MAX_CONNECTIONS)];

/* Bluetooth stack configuration parameters (see "UG136: Silicon Labs Bluetooth C Application Developer's Guide" for details on each parameter) */
static gecko_configuration_t config = {
  .config_flags = 0,                                   /* Check flag options from UG136 */
#if defined(FEATURE_LFXO)
  .sleep.flags = SLEEP_FLAGS_DEEP_SLEEP_ENABLE,        /* Sleep is enabled */
#else
  .sleep.flags = 0,
#endif // LFXO
  .bluetooth.max_connections = MAX_CONNECTIONS,        /* Maximum number of simultaneous connections */
  .bluetooth.max_advertisers = MAX_ADVERTISERS,        /* Maximum number of advertisement sets */
  .bluetooth.heap = bluetooth_stack_heap,              /* Bluetooth stack memory for connection management */
  .bluetooth.heap_size = sizeof(bluetooth_stack_heap), /* Bluetooth stack memory for connection management */
  .bluetooth.sleep_clock_accuracy = 100,               /* Accuracy of the Low Frequency Crystal Oscillator in ppm. *
                                                       * Do not modify if you are using a module                  */
  .gattdb = &bg_gattdb_data,                           /* Pointer to GATT database */
  .ota.flags = 0,                                      /* Check flag options from UG136 */
  .ota.device_name_len = 3,                            /* Length of the device name in OTA DFU mode */
  .ota.device_name_ptr = "OTA",                        /* Device name in OTA DFU mode */
#if (HAL_PA_ENABLE)
  .pa.config_enable = 1,                               /* Set this to be a valid PA config */
#if defined(FEATURE_PA_INPUT_FROM_VBAT)
  .pa.input = GECKO_RADIO_PA_INPUT_VBAT,               /* Configure PA input to VBAT */
#else
  .pa.input = GECKO_RADIO_PA_INPUT_DCDC,               /* Configure PA input to DCDC */
#endif // defined(FEATURE_PA_INPUT_FROM_VBAT)
#endif // (HAL_PA_ENABLE)
};

SPIDRV_HandleData_t handleDataSlave;
SPIDRV_Handle_t handleSlave = &handleDataSlave;

uint8_t slaveTxBuffer[10] = {0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA};
uint8_t slaveRxBuffer[BUFLEN] = {};

static volatile bool mastertxSlaverxCallbackDone = false;

static void slaveProcessTxDone(SPIDRV_Handle_t handleSlave,
              Ecode_t transferStatus,
              int itemsTransferred)
{
  (void)handleSlave;
  (void)transferStatus;
  (void)itemsTransferred;
}

static void slaveReceiveComplete( SPIDRV_Handle_t handleSlave,
                       Ecode_t transferStatus,
                       int itemsTransferred )
{
  uint32_t i;

#if 0
  if ( transferStatus == ECODE_EMDRV_SPIDRV_OK )
  {
    // Pretend that we have to do a large processing
    for (i = 0; i < 1000; i++);
  }
#endif

  mastertxSlaverxCallbackDone = true;
}

/**
 * @brief  Main function
 */
int main(void)
{

	int i;

    /* Initialize device */
    initMcu();

    printf("\r\nScotts bluetooth driver\r\n");

    /* Initialize board */
    initBoard();
    /* Initialize application */
    initApp();

    // SPIDRV_Init_t
    // PC6 - MOSI
    // PC7 - MISO
    // PC8 - CLK  connect to the CLK of the master
    // PC9 - CS
    SPIDRV_Init_t initDataSlave = SPIDRV_SLAVE_USART1;

    // Initialize the USART1 a SPI slave
    SPIDRV_Init( handleSlave, &initDataSlave );

    // Start a SPI slave transmit transfer
//    SPIDRV_STransmit( handleSlave, slaveTxBuffer, sizeof(slaveTxBuffer), slaveProcessTxDone, 0);

while (1) {

    printf("Starting read\r\n");

    // Start a SPI slave receive transfer.
    mastertxSlaverxCallbackDone = false;
    SPIDRV_SReceive( handleSlave, slaveRxBuffer, sizeof(slaveRxBuffer), slaveReceiveComplete, 0);

    while(!mastertxSlaverxCallbackDone);

    printf("Contents of buffer: %s\r\n", slaveRxBuffer);

}

    /* Start application */
    appMain(&config);

    SPIDRV_DeInit(handleSlave);

}

/** @} (end addtogroup app) */
/** @} (end addtogroup Application) */
