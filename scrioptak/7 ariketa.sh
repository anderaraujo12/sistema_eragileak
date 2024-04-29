## 7 Ariketa-Menua

Sortu programa bat erabiltzaileari hurrengo aukerak eskeiniko dizkiona, 6 garren aukera hautatu
harte behin eta berriro, terminala garbitu eta menua erakutsi.
1. Karpeta tamaina ikusi
2. Fitxategiak listatu
3. Fitxategi bat sortu
4. Karpeta sortu
5. Karpeta eta fitxategiak ezabatu
6. Irten

#!/bin/bash

karpeta_tamaina_ikusi() {
    echo "Karpeta tamaina ikusi aukera hautatu."
    # Hemen zure implementazioa gehitu
}

fitxategiak_listatu() {
    echo "Fitxategiak listatu aukera hautatu."
    # Hemen zure implementazioa gehitu
}

fitxategi_bat_sortu() {
    echo "Fitxategi bat sortu aukera hautatu."
    # Hemen zure implementazioa gehitu
}

karpeta_sortu() {
    echo "Karpeta sortu aukera hautatu."
    # Hemen zure implementazioa gehitu
}

fitxategiak_eta_karpeta_ezabatu() {
    echo "Karpeta eta fitxategiak ezabatu aukera hautatu."
    # Hemen zure implementazioa gehitu
}

menua_erakutsi() {
    while true; do
        clear
        echo "MENUA"
        echo "1. Karpeta tamaina ikusi"
        echo "2. Fitxategiak listatu"
        echo "3. Fitxategi bat sortu"
        echo "4. Karpeta sortu"
        echo "5. Karpeta eta fitxategiak ezabatu"
        echo "6. Irten"
        echo
        read -p "Aukeratu zenbaki bat: " aukera

        case $aukera in
            1) karpeta_tamaina_ikusi ;;
            2) fitxategiak_listatu ;;
            3) fitxategi_bat_sortu ;;
            4) karpeta_sortu ;;
            5) fitxategiak_eta_karpeta_ezabatu ;;
            6) echo "Agur!"; break ;;
            *) echo "Aukera okerra. Sartu berriro." ;;
        esac

        read -p "Sakatu enter jarraitu..." enter
    done
}

menua_erakutsi
