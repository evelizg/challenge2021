# Para la APP
# Al cargar la url de la app, este responde con Hello World from $hostname
# Para conseguir el cuadrado de un numero seria url/home/numero, la respuesta seria el cuadrado del numero ingresado
#
#
# Para el cluster kuberntes realizar lo siguiente:

make all

make destroy

# Para crear imagen docker

docker build -t gcr.io/useful-aquifer-302901/myapp .

# Para subir la imagen docker
make dockerpush	

# Para descargar la imagen docker
make dockerpull	

# Para levantar la app
make rundocker
