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

BuildDatabase -name ${dbName} ../ref.fa 1> 01.BuildDatabase.log 2>&1
