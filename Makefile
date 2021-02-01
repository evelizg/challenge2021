all: init plan apply
allapp: build push run

plan:
	terraform plan
apply:
	terraform apply

destroy:
	terraform destroy

build:
	docker build -t gcr.io/useful-aquifer-302901/myapp:tag1 .

push:
	docker push gcr.io/useful-aquifer-302901/myapp:tag1

pull:
	docker pull gcr.io/useful-aquifer-302901/myapp:tag1
	
run:
	gcloud beta run deploy myapp --image=gcr.io/useful-aquifer-302901/myapp:tag1 --allow-unauthenticated --port=5000 

delete:	
	gcloud run services delete myapp