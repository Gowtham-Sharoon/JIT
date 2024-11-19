resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  count       = var.public_subnet_count
  vpc_id      = aws_vpc.main.id
  cidr_block  = var.subnet_details["public${count.index + 1}"].cidr
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private" {
  count       = var.private_subnet_count
  vpc_id      = aws_vpc.main.id
  cidr_block  = var.subnet_details["private${count.index + 1}"].cidr
}

resource "aws_instance" "ec2" {
  count         = var.vm_count
  instance_type = var.instance_type
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  key_name      = var.key_pair_name
  subnet_id     = element(aws_subnet.public[*].id, count.index % length(aws_subnet.public))

  tags = {
    Name = "Instance-${count.index + 1}"
  }

  user_data = file("${path.module}/userdata/instance_userdata.sh")

  root_block_device {
    volume_size = 10
    volume_type = "gp2"
  }

  dynamic "ebs_block_device" {
    for_each = var.additional_volumes
    content {
      device_name           = "/dev/xvd${char(97 + count.index)}"
      volume_size           = ebs_block_device.value.size
      volume_type           = ebs_block_device.value.type
      delete_on_termination = true
    }
  }
}

resource "aws_eip" "elastic_ip" {
  count    = var.vm_count
  instance = aws_instance.ec2[count.index].id
}
