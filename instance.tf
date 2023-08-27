resource "aws_instance" "my_instance" {
  ami                    = "ami-0cf0e376c672104d6"
  instance_type          = var.instance_type
  count                  = 1
  key_name               = "ohio"
  user_data              = file("install.sh")
  vpc_security_group_ids = ["sg-061b92ed510b2540a"]
  tags = {
    Name = "terraform-cloud-${count.index}"
  }
}