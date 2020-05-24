# -*- coding: utf-8 -*-
"""
Created on Thu Mar 26 19:37:50 2020

@author: mrbo1
"""
## Accepts Boolean value and returns 1 if True or 0 if False
x = lambda i: 1 if i is True else 0

## Receives list and returns type of the first data element in list
y = lambda i: type(i[0])

## Applies factorial to number entered in function
z = lambda i: 1 if i == 0 else i * z(i-1)

print(x(True))

print(y(["hello", 32, 3.14159, True]))

print(z(4))

