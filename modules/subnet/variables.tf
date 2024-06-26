variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  type        = string
}

variable "project" {
  description = "The project name"
  type        = string
}

variable "region" {
  description = "AWS region"
}

variable "cidr_block" {
  description = "AWS region"
}