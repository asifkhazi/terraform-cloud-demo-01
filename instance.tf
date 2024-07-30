resource "aws_instance" "my_instance" {
  ami                         = "ami-05b5693ff73bc6f84"
  instance_type               = var.instance_type
  count                       = 1
  associate_public_ip_address = true
  key_name                    = "hydrabad"
  user_data                   = file("install.sh")
  tags = {
    Name = "terraform-cloud-${count.index}"
  }
}
