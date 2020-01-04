 # 1. Initializes cluster master node:
 kubeadm init --apiserver-advertise-address $(hostname -i)

# 2. Initialize cluster networking:
 kubectl apply -n kube-system -f \
    "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 |tr -d '\n')"

# 3. (Optional) Create an nginx deployment:
 kubectl apply -f https://raw.githubusercontent.com/kubernetes/website/master/content/en/examples/application/nginx-app.yaml
