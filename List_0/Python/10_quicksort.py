#-*- coding=utf-8 -*-
"""Faça um programa que recebe uma sequência de números inteiros e imprime essa
sequência ordenada."""

def quicksort(lista):
	if len(lista) < 2: 
		return lista
	return 	quicksort(filter(lambda x, y = lista[0]: x < y, lista)) + filter(lambda x, y = lista[0]: x == y, lista) + quicksort(filter(lambda x, y = lista[0]: x > y, lista)) 

#Outra forma mas nao muito legivel
def quicksort2(lista): return lista if len(lista) < 2 else (quicksort2(filter(lambda x, y=lista[0]: x < y, lista)) + filter(lambda x, y=lista[0]: x == y, lista) + quicksort2(filter(lambda x, y=lista[0]: x > y, lista)))

print ' '.join(map(str, quicksort(map(int, raw_input().split()))))
