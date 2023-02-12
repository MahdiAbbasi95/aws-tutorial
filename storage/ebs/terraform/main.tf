data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["*ubuntu-focal*"]
  }
}

resource "aws_instance" "exercise_6" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  ebs_block_device {
    device_name = "ebs"
    volume_size = 1
  }

  tags = {
    Name = "exercise_6"
  }
}