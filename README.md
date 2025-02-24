The sole purpose of this repository is to test for the presence of and Read/Write speed of the 
on-board APS6404L PSRAM Chip on the Pimoroni Pico 2 Plus board.

This is attached to the RP2350 QSPI Interface along with the on-board Flash mempory, 
though utilises a separate Chip Select line (GPIO47)

Using these settings, and overclocking the Pimoroni Pico Plus 2 I was able to achieve
the following 32-Bit Read / Write values for un-cached access:

32 bit: PSRAM write 8MB in 306734 us, 27348152 B/s (27.3 MBytes / Sec)
32 bit: PSRAM read 8MB in 340694 us, 24622118 B/s  (24.6 MBytes / Sec)

This uses PSRAM initialisation routines originally developed by Sparkfun for
their RP2350 range of boards, their code being published on GitHub in the following
repository: https://github.com/sparkfun/sparkfun-pico/tree/main/sparkfun_pico 

Under an MIT license included as follows:

The MIT License (MIT)

Copyright (c) 2024 SparkFun Electronics

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
