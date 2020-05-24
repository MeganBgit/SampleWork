# -*- coding: utf-8 -*-
"""
Created on Tue Jun 12 09:11:30 2018

@author: jrbrad
"""

x = [80, 66, 41, 90, 12, 93, 82, 42, 96, 8, 74, 43, 78, 32, 71, 44, 17, 60, 19, 38, 59, 6, 30, 62, 49, 94, 7, 100, 52, 85, 10, 5, 83, 64, 22, 86, 1, 72, 45, 79, 9, 63, 50, 16, 61, 14, 11, 0, 2, 68, 4, 46, 57, 28, 69, 3, 92, 76, 73, 54, 36, 65, 31, 67, 13, 51, 26, 99, 84, 15, 33, 40]
y = {7:'alphabet', 18:'you', 19:'elephant', 11:'squid', 32:'did', 27:'grey', 26:'this', 29:'liquid', 35:'refreshment', 36:'exercise', 49:'cold', 42:'correctly'}


xSmall = [i for i in x if i < 17]
print(xSmall)

xEven = [i for i in x if i%2 == 0]
print(xEven)

yEvenKey = {k:v for (k,v) in y.items() if k%2 == 0}
print(yEvenKey)