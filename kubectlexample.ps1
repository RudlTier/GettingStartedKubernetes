
# Create Deployment from .yaml file (-f for passing yaml file)
kubectl create -f .\yaml\webserver.yaml
# If deployed again: Error from server (AlreadyExists): error when creating "webserver.yaml": deployments.apps "webserver" already exists

# Create NodePort Service which opens a static port on all worker nodes which proxies to the dedicated service
kubectl create -f .\yaml\webserver-svc.yaml

# A more direct method of creating a Service is by exposing the previously created Deployment (this method requires an existing Deployment).
# Expose a Deployment with the kubectl expose command:
kubectl expose deployment webserver --name=web-service --type=NodePort

# You can also expose single pods
kubectl expose pod share-pod --type=NodePort --port=80

# It is not necessary to create the Deployment first, and the Service after. They can be created in any order. A Service will find and connect Pods based on the Selector.

###### GET Requests
# Get all pods in current namespace
kubectl get pods

# Get all pods with label app=nginx
kubectl get pods -l app=nginx 

# Get all pods with label app=nginx and list value for this label
kubectl get pods -L app -l app=nginx

# Get all replica sets in current namespace
kubectl get replicasets

# List Services 
kubectl get services

# Delete a pod
kubectl delete pods #podname
