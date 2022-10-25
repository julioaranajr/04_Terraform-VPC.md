# VPC configuration
resource "aws_vpc" "ta-main-vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
      Name = "talent-academy-vpc"
  }
}