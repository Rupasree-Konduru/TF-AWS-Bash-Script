terraform {
  backend "s3" {
    bucket         = "tf-remote-bucket-digitalden"
    key            = "tf-remote-bucket-digitalden/tf-aws-backend-bash-script/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-lock-table"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
