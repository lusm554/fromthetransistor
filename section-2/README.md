# UART

## Transmission and reception method
baud - bits per second

Range of standard speeds:
- 300
- 600
- 1200
- 2400
- 4800
- 9600
- 19200
- 38400
- 57600
- 115200
- 230400
- 460800
- 921600

<b>Start and stop bit</b>
Usually start and stop bits frame 1 byte of information (8 bits), while the least significant information bit is transmitted first, immediately after the start.

Values of start bit always is logical 0.
Value of stop bit always is logical 1.
