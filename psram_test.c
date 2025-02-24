/**
 * @file psram_test.c
 * 
 * This program uses slightly modified versions of the 
 * SparkFun psram_init() functions originally developed by them
 * for the Sparkfun RP2350 boards.
 * 
 * The sole purpose of this test program is to test for the 
 * presence of the PSRAM Chip on a Pimoroni Pico Plus 2 board
 * which uses GPIO47 as the Chip Select line for the on-board
 * APS6404L PSRAM QSPI Interface. 
 */

/*
The MIT License (MIT)

Copyright (c) 2024 Audio Morphology ltd / Richard R. Goodwin

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions: The
above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED
"AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/
#include <stdio.h>
#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "hardware/clocks.h"
#include "hardware/structs/ioqspi.h"
#include "hardware/structs/qmi.h"
#include "hardware/structs/xip_ctrl.h"

#include "rp2_psram.h"


const uint LED_PIN = 25;
const uint cs_pin = 47; 

int main() {

    set_sys_clock_khz(280000, true);
    //set_sys_clock_khz(320000, true);
    //set_sys_clock_khz(150000,true);
    // Serial port initialisation (Using USB for stdio)
    stdio_init_all();
    // Pre-start delay for testing
    for(int i = 1;i <= 20; i++){
      printf("Waiting to start %d\n",20-i);
      sleep_ms(1000);
    }
    for(int i = 1;i <= 20; i++){
        printf("\n",20-i);
    }

    bi_decl(bi_program_description("First Blink"));
    bi_decl(bi_1pin_with_name(LED_PIN, "On-board LED"));
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    psram_init(cs_pin);
    //qmi_hw->m[1].timing= 0x60460201;

    uint32_t psram_begin, psram_elapsed;
    float psram_speed;

    printf("Testing PSRAM...\n");

    // **************** 32 bits testing ****************
    psram_begin = time_us_32();
    for (uint32_t addr = 0; addr < (8 * 1024 * 1024); addr += 4) {
        qmi_psram_write32(addr, addr);
    }
    psram_elapsed = time_us_32() - psram_begin;
    psram_speed = 1000000.0 * 8 * 1024.0 * 1024 / psram_elapsed;
    printf("32 bit: PSRAM write 8MB in %d us, %d B/s\n", psram_elapsed, (uint32_t)psram_speed);

    psram_begin = time_us_32();
    for (uint32_t addr = 0; addr < (8 * 1024 * 1024); addr += 4) {
        uint32_t result = qmi_psram_read32(addr);
        if (result != addr){
            printf("PSRAM failure at address %x\n", addr);
            return 1;
        }
    }
    psram_elapsed = (time_us_32() - psram_begin);
    psram_speed = 1000000.0 * 8 * 1024 * 1024 / psram_elapsed;
    printf("32 bit: PSRAM read 8MB in %d us, %d B/s\n", psram_elapsed, (uint32_t)psram_speed);

    sleep_ms(1000);
    printf("All tests completed\n");
    sleep_ms(1000);


    while (1) {
        gpio_put(LED_PIN, 0);
        sleep_ms(250);
        gpio_put(LED_PIN, 1);
        sleep_ms(1000);
    }
}