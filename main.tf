provider "aws" {
  region  = "us-east-1"
}
# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#       Name = "myDevOpsVPC"
#   }
# }

data "aws_vpc" "myVPC" {
  id = "vpc-05cd0243712cebecd"
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${data.aws_vpc.myVPC.id}"
  cidr_block = "192.168.41.0/24"

  tags = {
    Name = "pbsubnet-1"
  }
}

output "vpc-id" {
  value = "${data.aws_vpc.myVPC.id}"
}

output "vpc-cidr" {
  value = "${data.aws_vpc.myVPC.cidr_block}"
}

output "vpc-owner" {
  value = "${data.aws_vpc.myVPC.owner_id}"
}

output "vpc-tags-env" {
  value = "${data.aws_vpc.myVPC.tags.Env}"
}

output "vpc-tags-loc" {
  value = "${data.aws_vpc.myVPC.tags.Location}"
}