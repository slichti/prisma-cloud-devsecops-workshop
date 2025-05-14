provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "b67cbb17663d7215f64b57b59ddabafd1c0cfd45"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-05-14 16:34:49"
    git_last_modified_by = "slichti@users.noreply.github.com"
    git_modifiers        = "slichti"
    git_org              = "slichti"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "a45584b3-3df9-4b54-a07e-7bc4cbfd8672"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

