#Variable Block
variable "aws_region" {
  type        = string
  description = "AWS default region"
}
variable "instance_type" {
  description = "AWS EC2 instance type"
  type        = string
}