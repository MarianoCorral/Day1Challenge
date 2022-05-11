terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Add a new branch
resource "github_branch" "development" {
  # Repository name (private repositories working as well)
  repository    = "Day1Challenge"
  # New Branch name
  branch        = "development"
  # Source Branch name
  source_branch = "master"
}

resource "aws_instance" "ec2" {
  ami         = "ami-0eb7496c2e0403237"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}