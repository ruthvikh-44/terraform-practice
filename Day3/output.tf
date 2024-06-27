output "public_ip" {
    description = "public IP address of the EC2 instance"
    value = module.ec2_instance.public_ip
}