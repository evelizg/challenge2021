all: init plan apply

plan:
	terraform plan
apply:
	terraform apply

destroy:
	terraform destroy

dockerbuild:
	docker build -t gcr.io/useful-aquifer-302901/myapp .

dockerpush:
	docker push gcr.io/useful-aquifer-302901/myapp:tag1

dockerpull:
	docker pull gcr.io/useful-aquifer-302901/myapp:tag1
	
rundocker:
	gcloud beta run services replace service.yaml
