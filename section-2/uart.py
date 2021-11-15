#!/usr/bin/env python3.9

# prints binary nums at their best
def bprint(b, zeroes=4):
    print(f'0b{b:0{zeroes}b}')

bit = 0b1  
# .bit_length()

# baud - bits per second

class Uart:
    def __init__(self, date, baud=9600, bits=8, stop_bits=1):
        self._baud = buad
        self._bits = bits
        self._stop_bits = stop_bits

