#-*- coding=utf-8 -*-
#Faça um programa que recebe uma lista de números inteiros e imprime o produto dos números.

produto = lambda lista: reduce(lambda x, y: x * y, lista)

print produto(map(int, raw_input().split()))

