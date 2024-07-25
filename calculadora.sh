#!/bin/bash

echo "Digite o primeiro número:"
read num1

echo "Digite o operador (+, -, *, /):"
read operador

echo "Digite o segundo número:"
read num2

case $operador in
    +)
        resultado=$(($num1 + $num2))
        ;;
    -)
        resultado=$(($num1 - $num2))
        ;;
    \*)
        resultado=$(($num1 * $num2))
        ;;
    /)
        if [ $num2 -eq 0 ]; then
            echo "Erro: Divisão por zero!"
            exit 1
        fi
        resultado=$(($num1 / $num2))
        ;;
    *)
        echo "Operador inválido!"
        exit 1
        ;;
esac

echo "O resultado é: $resultado"
