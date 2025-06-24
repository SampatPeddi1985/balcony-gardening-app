Project Structure 

balcony-gardening-app/
├── backend/             # Flask API for plant data
├── frontend/            # React UI
├── db/                  # PostgreSQL with init SQL
├── k8s/                 # Kubernetes YAML files
├── terraform/           # EKS cluster provisioning
├── ansible/             # Automated deployment with Ansible
├── .github/workflows/   # GitHub Actions CI/CD pipeline
├── Jenkinsfile          # Jenkins CI/CD alternative
└── README.md

# Balcony Gardening App

## Setup Locally (Minikube)
1. `minikube start`
2. `kubectl create namespace balcony`
3. `kubectl apply -f k8s/`
4. `minikube service frontend --url -n balcony`

## Deploy to EKS
1. `eksctl create cluster --name balcony-cluster --region us-west-2`
2. `terraform init && terraform apply`
3. `kubectl apply -f k8s/`

## CI/CD
- GitHub Actions configured; requires AWS/ECR/EKS secrets.
- Jenkins pipeline available in `Jenkinsfile`.

## Monitoring
- Add Prometheus & Grafana manifests into `k8s/monitoring/`.
