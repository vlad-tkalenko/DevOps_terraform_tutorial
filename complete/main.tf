module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "${local.name}-${terraform.workspace}"

  ami                    = data.aws_ami.ubuntu.id
  ignore_ami_changes     = true
  instance_type          = local.instance_type
  availability_zone      = data.aws_subnet.selected.availability_zone
  subnet_id              = data.aws_subnet.selected.id
  associate_public_ip_address = true
  vpc_security_group_ids = [module.securit_group.security_group_id]
  key_name               = module.key_pair.key_pair_name



  root_block_device = [
    {
    encrypted             = true
    volume_type           = "gp3"
    throughput            = 200
    volume_size           = 30 
  },
  ]

  tags = merge({"Environment" = terraform.workspace}, local.tags)
}


module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name = local.name
  create_private_key = true
}

module "securit_group" {
  source = "terraform-aws-modules/security-group/aws"
  version = "~> 4.0"

  name        = "${local.name}-${terraform.workspace}"
  description = "Security group for EC2 instance"
  vpc_id      = data.aws_vpc.default.id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules = ["https-443-tcp", "http-80-tcp", "ssh-tcp"]
  egress_rules = ["all-all"]

  tags = merge({"Environment" = terraform.workspace}, local.tags)
}

provider "aws" {
  region = local.region
}