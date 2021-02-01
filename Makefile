all: init plan apply
allapp: dockerbuild dockerpush rundocker

plan:
	terraform plan
apply:
	terraform apply

destroy:
	terraform destroy

dockerbuild:
	docker build -t gcr.io/useful-aquifer-302901/myapp:tag1 .

dockerpush:
	docker push gcr.io/useful-aquifer-302901/myapp:tag1

dockerpull:
	docker pull gcr.io/useful-aquifer-302901/myapp:tag1
	
rundocker:
	gcloud beta run deploy myapp --image=gcr.io/useful-aquifer-302901/myapp:tag1 --allow-unauthenticated --port=5000 