terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
   region = "us-east-1"
  shared_credentials_file = "/home/rob/.aws/credentials"
  profile                 = "kfsoladmin"
}

# Require TF version to be same as or greater than 0.12.13
terraform {
  required_version = ">=0.12.13"
  backend "s3" {
    bucket         = "terraform-state-storage-learnhashicorpplease"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "aws-locks-leaninghashicorp"
    encrypt        = true
  }
}


# Call the seed_module to build our ADO seed info
module "bootstrap" {
  source                      = "./modules/bootstrap"
  name_of_s3_bucket           = "terraform-state-storage-learnhashicorpplease" 
  dynamo_db_table_name        = "aws-locks-leaninghashicorp"
}
