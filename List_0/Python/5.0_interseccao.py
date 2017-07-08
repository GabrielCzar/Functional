#-*- coding=utf-8 -*-
#Faça um programa que recebe duas listas A e B e imprime a intersecção de A e B.

def inter(L, L2):
	return list(set(L).intersection(L2))

print inter(map (int, raw_input().split()), map (int, raw_input().split()))
