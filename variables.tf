variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner for AMI."
    
  type = object({
    name  = string
    owner = string
  })
    
  default = {
    values = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner  = "979382823631"  # Bitnami
  }
}

variable "environment" {
  description = "Development environment."

  type = object({
    name           = string
    network_prefix = string
  })

  default = {
    name           = "dev"
    network_prefix = "10.0."
  }
}

variable "blog_autoscaling" {
  default = "Minimum and maximum number of instances in the ASG."

  type = object({
    min_size = number
    max_size = number
  })

  default = {
    min_size = 1
    max_size = 2
  }
}