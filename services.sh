#!/bin/bash
set -euo pipefail

if [[ $# != 1 ]]
then
    echo "Usage: $0 <action>"
    exit 0
fi

action=$1

scripts=(
    ./mariadb.sh
    ./pgadmin.sh
    ./pgsql.sh
    ./redis.sh
)

for script in ${scripts[@]}
do
    echo $script $action
    $script $action
done
