# Commands for Minikube a kubernetes testing/learning environment on a local machine

# Start Minikube
minikube start

# Open Minikube dashboard
minikube dashboard

# SSH into the minikube vm
minikube ssh

# Get Ip of minikube vm
minikube ip

# Open service in web browser
minikube service web-service

# Minikube ships with an nginx ingress controller
minikube addons enable ingress 