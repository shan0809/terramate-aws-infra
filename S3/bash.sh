cd Development
# terraform init
# terraform apply -auto-approve
terraform destroy -auto-approve

cd ..

cd Production
# terraform init
# terraform apply -auto-approve
terraform destroy -auto-approve

cd ..

cd Testing
# terraform init
# terraform apply -auto-approve
terraform destroy -auto-approve

cd ..