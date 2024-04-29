#!/bin/bash

# 2 Ariketa-Datak

# Hilabete eta urte bat idazteko eskatuko dizu, ondoren data horretako egutegia erakutsi beharko
# dizu.

#!/bin/bash
echo "urte bat jsrri"

#!/bin/bash
read -r urtea

#!/bin/bash
echo "hilabete bat jarri"

#!/bin/bash
read -r hilabetea

#!/bin/bash
cal "$hilabetea" "$urtea"
