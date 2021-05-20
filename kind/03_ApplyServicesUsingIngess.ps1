kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml

(Invoke-WebRequest "http://localhost/foo").Content

(Invoke-WebRequest "http://localhost/bar").Content