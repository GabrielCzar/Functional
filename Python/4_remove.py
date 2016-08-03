#-*- coding=utf-8 -*-
"""Faça um programa que recebe uma lista numérica L e um dado número p e apaga todas
as ocorrências de p em L."""

remove = lambda L, x: filter(lambda y: y != x, L)

print " ".join(map(str, remove(map(int, raw_input().split()), input())))
