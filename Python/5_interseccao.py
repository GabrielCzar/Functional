#-*- coding=utf-8 -*-
#Faça um programa que recebe duas listas A e B e imprime a intersecção de A e B.

def inter(L, L2):
	if L == []:
		return
	if len(filter(lambda x: x == L[0], L2)) != 0:
		print L[0],
	inter(L[1:], L2)

inter (list (set (map (int, raw_input().split()))), list (set (map (int, raw_input().split()))))

"""
#ou

def inter(L, L2):
	return list(set(L).intersection(L2))

print inter(map (int, raw_input().split()), map (int,raw_input().split()))
"""