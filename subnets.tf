resource "aws_subnet" "public" {
    vpc_id = aws_vpc.ta-main-vpc.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "eu-central-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "ta-public"
    }
}

resource "aws_subnet" "app" {
    vpc_id = aws_vpc.ta-main-vpc.id
    cidr_block = "192.168.2.0/24"
    availability_zone = "eu-central-1a"

    tags = {
        Name = "ta-app"
    }
}

resource "aws_subnet" "data" {
    vpc_id = aws_vpc.ta-main-vpc.id
    cidr_block = "192.168.3.0/24"
    availability_zone = "eu-central-1a"

    tags = {
        Name = "ta-data"
    }
}