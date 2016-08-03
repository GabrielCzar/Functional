#-*- coding=utf-8 -*-
"""Faça um programa que recebe uma lista de inteiros e imprime o maior e o menor
elemento."""

maior = lambda lista: reduce(lambda x, y: x > y and x or y, lista)

menor = lambda lista: reduce(lambda x, y: x < y and x or y, lista)

def show(lista):
	return str(maior(lista)) + ' ' + str(menor(lista))

print show(map(int, raw_input().split()))
