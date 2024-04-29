## 3 Ariketa-Berdinak

Script honek terminaletik idazten ditugun bi izen berdinak diren edo ez konprobatuko du. Berdinak
badira, berdinak direla erantzungo digu eta desberdinak badira, desberdinak direla

#!/bin/bash
eho "idatzi lehenengo izena"

#!/bin/bash
read izena1

#!/bin/bash
echo "Idatzi bigarren izena"

#!/bin/bash
read izena2

#!/bin/bash
if [ "$izena1" = "$izena2" ]; then
    echo "Bi izenak berdinak dira."
else
    echo "Bi izenak ez dira berdinak."
fi
