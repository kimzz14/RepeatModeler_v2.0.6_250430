dbName=$1
threadN=$2

if [ -z "${dbName}" ]; then
    echo "Error: The variable 'Error' is empty."
    exit 1
fi

if [ -z "${threadN}" ]; then
    echo "Error: The variable 'threadN' is empty."
    exit 1
fi

RepeatMasker \
    -pa ${threadN} \
    -lib ${dbName}-families.fa \
    -species wheat \
    ../ref.fa \
    1> 03.RepeatMasker.log 2>&1
