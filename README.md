# Terraform_example
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

# Step 6 : Terraform format 

``` terraform fmt ```

# Step 7 : Terraform validate 

``` terraform validate ```

```
Success! The configuration is valid.


```

# Step 8 : Execution phase 

1. ```terrraform plan```
   ``` aws_budgets_budget.minbudget: Refreshing state... [id=471112594414:monthly-budget]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_budgets_budget.minbudget will be updated in-place
  ~ resource "aws_budgets_budget" "minbudget" {
        id                = "471112594414:monthly-budget"
      ~ limit_amount      = "3.0" -> "3"
        name              = "monthly-budget"
        # (7 unchanged attributes hidden)

        # (1 unchanged block hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
 ```
2. ```terraform apply```

```
aws_budgets_budget.minbudget: Refreshing state... [id=471112594414:monthly-budget]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_budgets_budget.minbudget will be updated in-place
  ~ resource "aws_budgets_budget" "minbudget" {
        id                = "471112594414:monthly-budget"
      ~ limit_amount      = "3.0" -> "3"
        name              = "monthly-budget"
        # (7 unchanged attributes hidden)

        # (1 unchanged block hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_budgets_budget.minbudget: Modifying... [id=471112594414:monthly-budget]
aws_budgets_budget.minbudget: Modifications complete after 1s [id=471112594414:monthly-budget]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.
```

