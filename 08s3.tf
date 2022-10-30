//custom simple storage service
provider "aws"{
    region = "ap-south-1"
}

resource "aws_s3_bucket" "custombucket"{
    description = "user amazon s3 bucket"
    bucket = "s3bucketcss"
    acl = "private"
    versioning {
      enabled = true
    }
    tags = {
        Name = "s3bucket by css"
    }
}