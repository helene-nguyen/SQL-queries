#~ Création d'un script via les commandes POSTGRES

export PGUSER=postgres

createuser -l -P ocolis2
# Reviens à faire : createuser --login --password --pwprompt ocolis

createdb -O ocolis2 ocolis2
# Reviens à faire : createdb --owner=ocolis ocolis
