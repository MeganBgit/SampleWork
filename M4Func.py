# -*- coding: utf-8 -*-
"""
Created on Thu Mar 26 20:39:55 2020

@author: mrbo1

"""
def is_even(x):
    # if the remainder (modulo) is 0 then it's evenly divisible by 2 => even
    return x % 2 == 0  

def sumEven(it):
    return sum(filter(is_even, it))