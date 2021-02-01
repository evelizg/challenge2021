# Para la APP
# Al cargar la url de la app, este responde con Hello World from $hostname
# Para conseguir el cuadrado de un numero seria url/home/numero, la respuesta seria el cuadrado del numero ingresado
#
#
# Para crear el cluster kuberntes realizar lo siguiente:

make all

make destroy

# Para correr la app en GCP (build, publish, run):
make allapp

# Para crear imagen docker

make dockerbuild

# Para subir la imagen docker al registry de GCP
make dockerpush	

# Para descargar la imagen docker
make dockerpull	

# Para correr la app en GCP
make rundocker