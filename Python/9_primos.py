#-*- coding=utf-8 -*-
"""Faça um programa que recebe uma lista de inteiros e imprime apenas os números
primos."""

primo = lambda n: len(filter(lambda x: n % x == 0, range(2, n))) == 0

print " ".join(map(str, (filter(primo, map(int, raw_input().split())))))
