n_hombre=0
n_mujeres=0
contador=0
ciudad=`cat instructores.txt | head -${contador} | tail -1 | awk '{print $4}'`
genero=`cat instructores.txt | head -${contador} | tail -1 | awk '{print $6}'`
max=`cat instructores.txt | wc -l`
while [ $contador -lt $max ]  
    contador=$(($contador+1))
    if [ $1 = $ciudad ]; then
        if [ $genero = 'Hombre' ]; then
             n_hombre=$(($n_hombre+1))
	else
	    n_mujeres=$(($n_mujeres+1))
	fi
    fi
done

if [ $n_hombres -gt $n_mujeres ]; then
    echo "Hay un mayor numero de hombres"
else 
echo "Hay un mayor numero de mujeres"
fi