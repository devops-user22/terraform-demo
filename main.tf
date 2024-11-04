

variable "bucketname" {
  description = "Name of the S3 bucket"
  type        = string
}


resource "aws_s3_bucket" "neuro-ace-services" {
  bucket = var.bucketname
}
