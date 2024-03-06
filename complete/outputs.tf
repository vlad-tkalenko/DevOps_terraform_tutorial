output "private_key_openssh" {
    description = "The private key in OpenSSH format"
    value       = module.key_pair.private_key_openssh
    sensitive   = true
}

output "private_key_pem" {
    description = "The private key in PEM format"
    value       = module.key_pair.private_key_pem
    sensitive   = true
}

output "public_key_openssh" {
    description = "The public key in OpenSSH format"
    value       = module.key_pair.public_key_openssh
}

output "public_key_pem" {
    description = "The public key in PEM format"
    value       = module.key_pair.public_key_pem
}

output "ec2_instance_public_ip" {
    description = "The public IP address of the EC2 instance"
    value       = module.ec2_instance.public_ip
}