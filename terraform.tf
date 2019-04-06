terraform {
 backend "s3" {
  encrypt = true
  bucket = "terraform-remote-state-storage-s3-minus-et-cortex"
  dynamodb_table = "terraform-state-lock-dynamo"
  key = "./orchestrator/terraform.tfstate" // or path/to/file which will contains the versioned changes
 }
}