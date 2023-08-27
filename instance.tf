resource "aws_instance" "my_instance" {
  ami                    = "ami-0cf0e376c672104d6"
  instance_type          = var.instance_type
  count                  = 1
  subnet_id              = "subnet-089f58d3a681e0693"
  key_name               = "ohio"
  user_data              = file("install.sh")
  vpc_security_group_ids = ["sg-074ef07be41fc9239"]
  tags = {
    Name = "terraform-cloud-${count.index}"
  }
}