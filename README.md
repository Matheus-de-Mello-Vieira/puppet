# puppet

## Terraform
Here we will provide 3 aws EC2 instances, each with a DNS domain:
* main.DOMAIN
* node1.DOMAIN
* node2.DOMAIN

We will get these machines public ssh key

To get the pem file, execute this command in terraform file:
```
terraform output -raw private_key_pem >> ../key.pem && sudo chmod 400 ../key.pem
```