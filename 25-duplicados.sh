#!/bin/bash

# Creo el fichero con nombres

touch 'nombres.txt'

echo -e	'Eduardo' > nombres.txt
echo -e 'Jose' >> nombres.txt
echo -e 'Alejandro' >> nombres.txt
echo -e 'David' >> nombres.txt
echo -e 'Jaret' >> nombres.txt
echo -e 'Gabi' >> nombres.txt
echo -e 'Brian' >> nombres.txt
echo -e 'Kilian' >> nombres.txt

# Ordeno el fichero por orden alfabético
sort -u -d nombres.txt
