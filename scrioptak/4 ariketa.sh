#!/bin/bash

##4 Ariketa-kalkulagailua

# Script bat sortu, non balio bat eskatuko dizun, gero ze eragiketa egin nahi duzun galdetuko dizu
# (batuketa +, kenketa -, biderkaketa *, eta zatiketa /) eta azkenik bigarren balio bat. Zure script-ak
# emaitza kalkulatuko du.

echo "Lehenengo balioa idatzi"

read -r ZENBAKIA1

echo "Bigarren balioa idatzi"

read -r ZEMBAKIA2

echo "kalkulo mota idatzi"

read -r CALC

if [ "$CALC" -eq '+' ]; then
    echo "$ZENBAKIA1" + "$ZEMBAKIA2"
    
elif [ "$CALC" -eq '-' ]; then
    echo "$ZENBAKIA1" - "$ZEMBAKIA2"

elif [ "$CALC" = '/' ]; then
    echo "$ZENBAKIA1" / "$ZEMBAKIA2"
 
elif [ "$CALC" = '*' ]; then
    echo "$ZENBAKIA1" * "$ZEMBAKIA2"

else
    echo "Operadore okerra. + , - , / edo * erabili."
fi