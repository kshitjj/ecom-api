build-image:
	docker build -t kshitijrajgude/ecom-api-alpine .
push-image:
	docker kshitijrajgude/ecom-api
run-docker:
	docker run -p 3000:3000 kshitijrajgude/ecom-api-alpine
update-configmap-postgres:
	kubectl create configmap postgres-init --from-file=init.sql --dry-run=client -o yaml > k8s/postgres-configmap.yml # This puts the new init.sql which contains database schema for the system.
apply-k8s:
	kubectl apply -f  k8s
