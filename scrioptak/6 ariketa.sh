#!/bin/bash

## 6 Ariketa-Fitxategiak

# Aldagai bezala fitxategi batzuen izena jaso eta bakoitzarentzak konprobatu existitzen den fitxategiak
# diren eta horrela bada, erakutsi fitxategiaren edukia pantailan.


#!/bin/bash

fitxategiak_irakurri() {
    for fitxategia in "$@"; do
        if [ -f "$fitxategia" ]; then
            echo "Fitxategia: $fitxategia"
            cat "$fitxategia"
        else
            echo "Errorea: Fitxategia ez da existitzen: $fitxategia"
        fi
    done
}

echo "Sartu fitxategiak (hutsuneekin bananduta):"
read -r -a fitxategi_izenak

fitxategiak_irakurri "${fitxategi_izenak[@]}"
