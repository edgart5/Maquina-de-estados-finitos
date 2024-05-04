# Maquina de estados finitos
 Maquina de estados implementada con un semaforo
# Serie I y serie II
En este documento se presenta el parcial No. 2 que consiste en una maquina de estados finitos implementada con dos semaforos y ademas un detector de peatones.

Los estados que se utilizan se pueden observar en la siguiente imagen:

.center{![alt text](image.png)}

El detector de peatones tiene como funcion dar prioridad a los peatones que esten por cruzar las calles. El peaton que cruza sobre la avenida tiene mas prioridad que el peaton que viene sobre la calle porque se supone que transitan mas personas sobre la avenida.
Entonces, cuando se detecte un peaton sobre la avenida (PeatonA), si el semaforo de la avenida esta en verde(S0), comienza el cambio de estado para el siguiente(S1) y cuando se mantiene de esta manera pasa al siguiente estado(S2), de esta manera el semaforo de la avenida se pondra en rojo y los peatones podran pasar. De lo contrario el semaforo se guiara por los vehiculos que esten pasando sin tomar en cuenta los peatones.

La tabla generada con las entradas, salidas y estados actual y siguiente fue la siguiente:

![alt text](image-1.png)

