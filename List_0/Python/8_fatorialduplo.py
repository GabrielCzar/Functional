#-*- coding=utf-8 -*-
"""O fatorial duplo de um número natural n é o produto de todos os números de 1 (ou 2)
até n, contados de 2 em 2. Por exemplo, o fatorial duplo de 8 é 8×6×4×2 = 384, e o
fatorial duplo de 7 é 7×5×3×1 = 105. Faça um programa que recebe um número e
imprime seu fatorial duplo."""

fat = lambda n: n == 0 and 1 or reduce(lambda x, y: x * y, range(n, 0, -2))

print fat(input())
