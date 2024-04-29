#!/bin/bash

## 5 Ariketa-Baimenak

#A ldagai bezela fitxategi baten izena jaso behar da eta konprobatu behar da eta ze baimena dituen,
# (idazteko, irakurtzeko edo exekutatzeko). Programak esango digu zeintzuk diren baimenak.

#!/bin/bash

baimenak_konprobatu() {
    fitxategia="$1"

    if [ -e "$fitxategia" ]; then
        irakurketa=$(test -r "$fitxategia" && echo "bai" || echo "ez")
        idazketa=$(test -w "$fitxategia" && echo "bai" || echo "ez")
        exekuzioa=$(test -x "$fitxategia" && echo "bai" || echo "ez")

        echo "Baimenak fitxategiarentzat:"
        echo "Irakurtzeko: $irakurketa"
        echo "Idazteko: $idazketa"
        echo "Exekutatzeko: $exekuzioa"
    else
        echo "Errorea: Fitxategia ez da existitzen: $fitxategia"
    fi
}

echo "Sartu fitxategiaren izena:"
read -r fitxategia

baimenak_konprobatu "$fitxategia"
