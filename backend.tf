terraform {
  backend "s3" {
    bucket = "ansible1234"
    region = "ap-south-1"
    key = "terraform.tfstate"
    # dynamodb_table = "terraform-lock"

  }
}
# resource "aws_s3_bucket" "s3_bucket" {
#   bucket = "ansible-state12579"
# }

# resource "aws_dynamodb_table" "terraform_lock" {
#   name = "terraform-lock"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key = "LockId"
#   attribute {
#     name = "LockId"
#     type = "S"
#   }
  
# }