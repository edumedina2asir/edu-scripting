#!/bin/bash
# En mi caso he buscado las vocales del nombre y del contenido del fichero
# Pido el nombre del fichero
read -p 'Elige un fichero: ' fichero
echo ''

# Recojo las vocales del fichero
# Uso tr -c para que escoja lo contrario y d para que haga la acción delete con lo escogido
vocales=$(echo "$fichero" | tr -cd 'aeiouAEIOU' | wc -m)

echo "El nombre del fichero $fichero contiene $vocales vocales."

# Busco dentro del contenido del fichero
vocalescat=$(cat "$fichero" | tr -cd 'aeiouAEIOU' | wc -m)

echo "En el contenido de $fichero hay $vocalescat vocales."
