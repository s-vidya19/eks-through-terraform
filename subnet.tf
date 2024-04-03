resource "aws_subnet" "public-us-east-1a" {
    vpc_id                 = aws_vpc.main.id
    cidr_block             = "10.0.3.0/24"
    availability_zone      = "us-east-1a"
    map_public_ip_on_launch = true

    tags  = {
        Name = "pub-subnet-1"
        "kubernetes.io/role/elb"     = "1"
        "kubernetes.io/cluster/demo" = "owned"

    }
}

resource "aws_subnet" "public-us-east-1b" {
    vpc_id                 = aws_vpc.main.id
    cidr_block             = "10.0.4.0/24"
    availability_zone      = "us-east-1b"
    map_public_ip_on_launch = true
    

    tags = {
        Name = "pub-subnet-2"
        "kubernetes.io/role/elb"     = "1"
        "kubernetes.io/cluster/demo" = "owned"
    }
}
