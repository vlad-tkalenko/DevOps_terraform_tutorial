terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.2.0"
  
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
# export AWS_ACCESS_KEY_ID="ASIATUESEBSN7DP57JWV"
# export AWS_SECRET_ACCESS_KEY="W/qubBZxkB1lKkB0/XmbtRGCl10Z69nb3yAuuzO1"
# export AWS_SESSION_TOKEN="IQoJb3JpZ2luX2VjELP//////////wEaCWV1LXdlc3QtMiJHMEUCIQC/TSh1jNeXHZ/qe2L7fpROtJqPM+hfOy9yIdzw9XHnVwIgd9CS8Ju4a/uZB55ir7AGva2viBvx/RbD/QmfkJx9jTUq/QIIq///////////ARAEGgwyNDk0MTQ1NTI3MzEiDMsrbO8UmBecU0pMrCrRAkaZE3zJ7JVB1YXUQXolhEXOmvPSqMOdFIP1J3CZH8FadKXo/9satKYNi7bOuALtlFKH3k+0DUpkQ4kILUN/G8+Ac826MOONpMZSGQDxStxQ7HVS2Q+FVS+xbS22vi5OZlFZhBRXgzPrCDS+Jg4dksWKV5NRBXmJx+hteIB5Sg7xFjAQUHP7MK3bFW8XAtlii472V8ytwuIjVSsfmD+3qKoRBYBlcn9cC78+FLucRqgavsHwtr4cghJLDwPTUuCQtrWqiridW2sfCLiSKrFti8MYb+mYTVCk/RE0puhPr/8kcuqO78e6AVM0Zogsj7lPlluRdJSRHEMWocKwXuEMhl+GHyy8k0v97JLloMNzsuDpaUluE07WIJc5rb9RhhJyGmLHvPezd4EfIkPedTJPNKXq27PlS8HAtP4+M+yE8kvjzGNbrKFgkuTdtDSCKBV+wIAw8eairwY6pwGWlR7uQSpW4OcCGdQ+smwBdsq3PKCUdy3PpytEjLtyuRPgegGlG+JaRr/yDshw5CXqW9CzMTkTrvITd8GwEKFUxqHLuXzF7TgdJoY61NwUAhIaZ6Mk0AGVrweZ6rZCFidV4azag8aY19Q2sK2pcH+AE+W19jMLRlGQPD8pn+TVJ4AD87h5tinUgW+xV04YjWcmcmakMxRNzr3m/IoItW4/eXbpy4UqTw=="