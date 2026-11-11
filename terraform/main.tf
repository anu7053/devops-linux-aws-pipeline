provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  description = "AWS region for infrastructure deployment"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type for Linux target nodes"
  type        = string
  default     = "t3.micro"
}

resource "aws_security_group" "linux_patch_sg" {
  name        = "linux-patch-nodes-sg"
  description = "Allow SSH for Ansible automation and Prometheus metrics"

  ingress {
    description = "SSH access for Ansible"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Restrict to runner IP in production
  }

  ingress {
    description = "Prometheus Node Exporter"
    from_port   = 9100
    to_port     = 9100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "linux_target" {
  ami                    = "ami-0c7217cdde317cfec" # Ubuntu 22.04 LTS (us-east-1)
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.linux_patch_sg.id]

  tags = {
    Name        = "Managed-Linux-Node"
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}

output "instance_public_ip" {
  description = "Public IP address of the managed Linux server"
  value       = aws_instance.linux_target.public_ip
}
