resource "aws_s3_bucket" "terraform_state_app" {
  bucket = "${var.S3_BUCKET}"
  acl    = "private"

  tags {
    Name = "Terraform state app"
  }
}
