#!/usr/bin/env python3.9

# prints binary nums at their best
def bprint(b, zeroes=4):
    print(f'0b{b:0{zeroes}b}')

# INFO ABOUT BITWISE OPERATORS

# AND - returns 1 if both bits are 1 else 0.
a1 = 0b1010 # 10
a2 = 0b0101
bprint(a1 & a2) # 0b0000


# OR - returns if either of the bit is 1 else 0.
o1 = 0b1010
o2 = 0b0101
bprint(o1 | o2) # 0b1111 


# NOT - returns negative num.
n1 = ~0b1010
bprint(n1) # 0b-1011


# XOR - returns 1 if one of the bits is 1 and the other is 0 else returns false.
x1 = 0b1010
x2 = 0b0010 
bprint(x1 ^ x2, 0) # 0b1000


# RIGHT SHIFT same as dividing number with some power of two.
rs = 0b1010
rs = rs >> 1
bprint(rs) # 0b0101

rs = -0b1010
rs >>= 1
#bprint(rs) # 0b0101

rs = 0b1010
bprint(rs >> 2) # 0b0010


# LEFT SHIFT same as multiplying number with some power of two.
ls = 0b1010
ls <<= 2
bprint(ls) # 0b101000

