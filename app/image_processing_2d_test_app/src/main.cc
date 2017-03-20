/*
 * Dragster line scanners readout test
 */

#include <stdio.h>
#include "imageCaptureManager.h"
#include "globalDefs.h"



int main()
{
    printf("Application started\n\r");
    ImageCaptureManager systemManager;
    systemManager.initialize();
    // check config
    DragsterConfig linescanner0Config = systemManager.getDragsterConfig(LINESCANNER0);
    DragsterConfig linescanner1Config = systemManager.getDragsterConfig(LINESCANNER1);
    xil_printf("Linescanner 0, Register1: 0x%02X", linescanner0Config.getControlRegister1()._registerValue);
    xil_printf("Linescanner 0, Register2: 0x%02X", linescanner0Config.getControlRegister2()._registerValue);
    xil_printf("Linescanner 0, Register3: 0x%02X", linescanner0Config.getControlRegister3()._registerValue);

    xil_printf("Linescanner 1, Register1: 0x%02X", linescanner1Config.getControlRegister1()._registerValue);
    xil_printf("Linescanner 1, Register2: 0x%02X", linescanner1Config.getControlRegister2()._registerValue);
    xil_printf("Linescanner 1, Register3: 0x%02X", linescanner1Config.getControlRegister3()._registerValue);
    // todo: umv: write configuration in files via FatFS
    // start process ...
    systemManager.startImageCapture();
    // stop ...
    for(;;);
    systemManager.stopImageCapture();
    return 0;
}
