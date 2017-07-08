#-*- coding=utf-8 -*-
"""Faça um programa que, dado uma lista numérica, imprima uma 2-tupla, tal que
contenha o maior valor da lista, bem como sua posição relativa"""

maior = lambda L: reduce(lambda x, y: x > y and x or y, L)

pos_rel = lambda x, L: L[0] == x and 1 or 1 + pos_rel(x, L[1:])

def show(lista):
        return ( maior(lista), (pos_rel(maior(lista), lista)-1))

print show(map(int, raw_input().split()))
