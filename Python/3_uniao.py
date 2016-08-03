#-*- coding=utf-8 -*-
#Faça um programa que recebe duas listas A e B e imprime a união de A e B.

uniao = lambda L, L2: list(set(L + L2))

print ' '.join(map(str, uniao(map(int, raw_input().split()), map(int, raw_input().split()))))

"""
#OU 
contains = lambda x, L: filter(lambda y: x == y, L)

def uniao(L, L2):       
        return L + filter(lambda x: contains(x, L) == [], L2)

print ' '.join(map(str, uniao (map(int, raw_input().split()), map(int, raw_input().split()))))
"""
