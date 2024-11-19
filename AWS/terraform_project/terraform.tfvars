aws_access_key = "YOUR_AWS_ACCESS_KEY"
aws_secret_key = "YOUR_AWS_SECRET_KEY"
aws_region     = "us-east-1"
vpc_name       = "my-vpc"
vpc_cidr       = "10.0.0.0/16"
public_subnet_count = 2
private_subnet_count = 2
subnet_details = {
  public1 = { cidr = "10.0.1.0/24" }
  public2 = { cidr = "10.0.2.0/24" }
  private1 = { cidr = "10.0.3.0/24" }
  private2 = { cidr = "10.0.4.0/24" }
}
vm_count         = 2
instance_type    = "t2.micro"
key_pair_name    = "my-key-pair"
additional_volumes = [
  { size = 20, type = "gp2" },
  { size = 30, type = "gp3" }
]
