resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
}

output "bucket_id" {
  value = aws_s3_bucket.bucket.id
}