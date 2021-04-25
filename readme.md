[![License: MPL 2.0](https://img.shields.io/badge/License-MPL%202.0-brightgreen.svg)](https://opensource.org/licenses/MPL-2.0)

# Terraform in Action

Copy example of vars and edit with yours infos
```bash
cp terraform.tfvars{-example,}
```

Execute terraform with personal definitions
```bash
terraform apply -var-file='terraform.tfvars'
```

To deploy with no downtime use taint do mark elements 

To mark first webworker droplet:
```bash
terraform taint "digitalocean_droplet.web[0]"
```
After you can run aplly comand
```bash
terraform apply
```
