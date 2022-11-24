variable "application_name" {
  description = "application name"
  type        = string
  default     = "helloworld"
}

variable "redirect_uri" {
  description = "redirect URL"
  type        = string
  default     = "http://localhost:3000/auth/redirect"
}
