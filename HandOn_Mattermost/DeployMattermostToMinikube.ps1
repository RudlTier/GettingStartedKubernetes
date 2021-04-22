# Link to Docs https://docs.mattermost.com/install/install-kubernetes.html

# Minikube ships with an nginx ingress controller
minikube addons enable ingress 

# Create Mattermost Namespace
kubectl create ns mattermost-operator

# Install the mattermost operator
kubectl apply -n mattermost-operator -f https://raw.githubusercontent.com/mattermost/mattermost-operator/master/docs/mattermost-operator/mattermost-operator.yaml

# The MySQL operator and MinIO operator are a good way to try out the Mattermost Operator 
# or develop it on a local cluster but they are not recommended for production usage.
kubectl create ns mysql-operator
kubectl apply -n mysql-operator -f https://raw.githubusercontent.com/mattermost/mattermost-operator/master/docs/mysql-operator/mysql-operator.yaml

kubectl create ns minio-operator
kubectl apply -n minio-operator -f https://raw.githubusercontent.com/mattermost/mattermost-operator/master/docs/minio-operator/minio-operator.yaml

# Create Application Namespace
kubectl create ns mattermost
kubectl apply -n mattermost -f .\mattermost-installation.yaml

# The deployment process can be monitored in the Kubernetes user interface or in command line by running:
kubectl -n mattermost get mm -w