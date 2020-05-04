n_hombre=0
n_mujeres=0
contador=0
ciudad=`cat instructores.txt | awk '{print $4}'`
genero=`cat instructores.txt | awk '{print $6}'`
max=`cat instuctores.txt | wc -l`
while [ $contador -lt $max ]  
    contador=$(($contador+1))
    if [ $1 = $ciudad ]; do
        if [ $genero = 'Hombre' ]; do
             n_hombre=$(($n_hombre+1))
	else
	    n_mujeres=$(($n_mujeres+1))
	fi
    fi
done