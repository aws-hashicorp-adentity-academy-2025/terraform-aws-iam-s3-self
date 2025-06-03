variable "postfix" {
  type        = string
  description = "Postfix for the admin user"
}

variable "policy_type" {
  type        = string
  description = "Policy type [ s3_readonly_policy / s3_readwrite_policy ]"
}

variable "aws_access_key" {
  type        = string
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
}