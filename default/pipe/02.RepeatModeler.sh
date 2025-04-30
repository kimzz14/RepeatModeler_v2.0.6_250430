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

RepeatModeler -database ${dbName} -threads ${threadN} 1> 02.RepeatModeler.log 2>&1

#-LTRStruct
#        Run the LTR structural discovery pipeline ( LTR_Harvest and
#        LTR_retreiver ) and combine results with the RepeatScout/RECON
#        pipeline. [optional]
