terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_budgets_budget" "minbudget" {
  name              = "monthly-budget"
  budget_type       = "COST"
  limit_amount      = "3"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2024-07-01_00:01"
}
