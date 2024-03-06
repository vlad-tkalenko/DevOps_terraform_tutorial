locals {
    name = "Tkalenko_lab5"
    region = "eu-west-2"

    instance_type = "t2.micro"

    tags = {
        Name = "${local.name}-${terraform.workspace}"
        ManagedBy = "terraform"
        Repository = ""
        }
}