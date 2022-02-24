resource "aws_instance" "master" {
  ami                    = var.ec2_ami
  instance_type          = var.master_instance_type
  key_name               = aws_key_pair.main.key_name
  vpc_security_group_ids = [aws_security_group.main.id]

  tags = {
    Name = "Master"
  }
}

resource "aws_instance" "node" {
  ami                    = var.ec2_ami
  instance_type          = var.node_instance_type
  count                  = var.node_instance_count
  key_name               = aws_key_pair.main.key_name
  vpc_security_group_ids = [aws_security_group.main.id]

  tags = {
    Name = "Node ${count.index}"
  }
}