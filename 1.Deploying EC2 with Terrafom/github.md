#### Pre-Requisite

1. Create a GitHub account.
2. Create Personal Access Token

#### GitHub Provider Terraform:

https://registry.terraform.io/providers/integrations/github/latest/docs

Code:

```sh

terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.3.2"
    }
  }
}

provider "github" {
  token = "INPUT-THE-TOKEN-HERE"
}

resource "github_repository" "example" {
  name        = "terraform-repo"

  visibility  = "public"

}
```
#### Initialize and Apply:
```sh
terraform init
terraform plan
terraform apply
```
