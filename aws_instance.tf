# EC2 Instance 1 - Amazon Linux 2
resource "aws_instance" "amazon_linux" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.demo_key.key_name
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  subnet_id              = data.aws_subnet.default.id

  tags = {
    Name    = "${var.project_name}-amazon-linux-${random_id.instance_suffix[0].hex}"
    Project = var.project_name
    OS      = "Amazon Linux 2"
    Managed = "terraform"
  }
}

# EC2 Instance 2 - Ubuntu 22.04
resource "aws_instance" "ubuntu" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.demo_key.key_name
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  subnet_id              = data.aws_subnet.default.id

  tags = {
    Name    = "${var.project_name}-ubuntu-${random_id.instance_suffix[1].hex}"
    Project = var.project_name
    OS      = "Ubuntu 22.04"
    Managed = "terraform"
  }
}

# EC2 Instance 3 - Debian 12
resource "aws_instance" "debian" {
  ami                    = data.aws_ami.debian.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.demo_key.key_name
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  subnet_id              = data.aws_subnet.default.id

  tags = {
    Name    = "${var.project_name}-debian-${random_id.instance_suffix[2].hex}"
    Project = var.project_name
    OS      = "Debian 12"
    Managed = "terraform"
  }
}

# EC2 Instance 4 - CentOS Stream 9
resource "aws_instance" "centos" {
  ami                    = data.aws_ami.centos.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.demo_key.key_name
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  subnet_id              = data.aws_subnet.default.id

  tags = {
    Name    = "${var.project_name}-centos-${random_id.instance_suffix[3].hex}"
    Project = var.project_name
    OS      = "CentOS Stream 9"
    managed = "terraform"
  }
}

# EC2 Instance 5 - Fedora
resource "aws_instance" "fedora" {
  ami                    = data.aws_ami.fedora.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.demo_key.key_name
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  subnet_id              = data.aws_subnet.default.id

  tags = {
    Name    = "${var.project_name}-fedora-${random_id.instance_suffix[4].hex}"
    Project = var.project_name
    OS      = "Fedora"
    managed = "terraform"
  }
}
