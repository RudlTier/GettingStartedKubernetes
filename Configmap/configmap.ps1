
# Create the ConfigMap
kubectl create configmap my-config --from-literal=key1=value1 --from-literal=key2=value2

# Display the ConfigMap Details in yaml format (-o yaml)
kubectl get configmaps my-config -o yaml

# Create a configmap from an existing configurationfile
kubectl create -f .\customer1-configmap.yaml

# Create a secret
kubectl create secret generic my-password --from-literal=password=mysqlpassword