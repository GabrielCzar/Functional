#-*- coding=utf-8 -*-
"""Faça um programa que determina se uma dada string é palíndromo. A saída deve ser
apenas as palavras sim ou nao."""

def is_palindromo(s):
	return s == s[::-1] and "sim" or "nao"

print is_palindromo(raw_input())