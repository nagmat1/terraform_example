# terraform_example
Tutorial to Terraform with AWS Budgets

# Step 1: Setup CLI Tools using pycharm. 

```terraform version``` 

```
Terraform v1.9.2-dev
on linux_amd64
+ provider registry.terraform.io/hashicorp/aws v3.5.0

Your version of Terraform is out of date! The latest version
is 1.9.2. You can update by downloading from https://www.terraform.io/downloads.html

```

```aws --version```

```aws-cli/2.17.12 Python/3.11.9 Linux/6.5.0-41-generic exe/x86_64.ubuntu.22```

# Step 2 : Setup AWS Credentials 

```IAM MANAGEMENT --> create access key``` 

![image](https://github.com/user-attachments/assets/e3e7422b-7477-49ae-b047-e235a726f9ea)

# Step 3 : Setup AWS Profile

![image](https://github.com/user-attachments/assets/a1e1be37-3ef1-46a3-b061-a29eb2f3baa0)

# Step 4 : Terraform config 

1. Create main.tf file.

# Step 5 : Terraform init 

```terraform init  ```

```
Initializing the backend...
Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v3.5.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```
