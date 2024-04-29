##4 Ariketa-kalkulagailua

# Script bat sortu, non balio bat eskatuko dizun, gero ze eragiketa egin nahi duzun galdetuko dizu
# (batuketa +, kenketa -, biderkaketa *, eta zatiketa /) eta azkenik bigarren balio bat. Zure script-ak
# emaitza kalkulatuko du.


#!/bin/bash

echo "Lehenengo balioa idatzi"

read ZENBAKIA1

echo "Bigarren balioa idatzi"

read ZEMBAKIA2

echo "kalkulo mota idatzi"

read CALC

if [ $CALC -eq '+' ]; then
echo $ZENBAKIA1 + $ZEMBAKIA2
elif [ $CALC -eq '-' ]; then
echo $ZENBAKIA1 - $ZEMBAKIA2

elif [ $CALC -eq '/' ]; then
echo $ZENBAKIA1 / $ZEMBAKIA2
 
elif [ $CALC -eq '*' ]; then
echo $ZENBAKIA1 * $ZEMBAKIA2

else
 echo "Operadore okerra. + , - , / edo * erabili."
fi