# CREATE S3 BUCKET

resource "aws_s3_bucket" "mybucket" {
  bucket = var.buycketname
}


resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}


resource "aws_s3_bucket_website_configuration" "website" {
    bucket = aws_s3_bucket.mybucket.id
    index_document {
        suffix = "index.html"
    }

    error_document {
      key = "error.html"
    }

    depends_on = [ aws_s3_bucket_acl.example ]

     
}


