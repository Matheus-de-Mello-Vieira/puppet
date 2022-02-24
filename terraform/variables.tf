variable "ec2_ami" {
  type        = string
  description = "The ec2 ami"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "aws region"
}

variable "aws_profile" {
  type        = string
  default     = "default"
  description = "aws region"
}

variable "master_instance_type" {
  type        = string
  default     = "t2.medium"
  description = "instance type of master instance (greater that t2.micro is recommend)"
}

variable "node_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "instance type of node instances (t2.micro works well)"
}

variable "node_instance_count" {
  type        = number
  default     = 2
  description = "number of node instance"
}
