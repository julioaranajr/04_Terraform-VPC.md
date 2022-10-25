# Do not forget to update the "<key-value>" to keep it separate 
# from other projects.
terraform {
  backend "s3" {
    bucket = "ta-labs-test-terraform-tfstates-342055123193"
    key    = "sprint2/week1/training-terraform/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}
