variable "env" {
  description = "Environment for these hosts, affects DNS entries."
  type        = string
  default     = "thehive"
}

variable "public_domain" {
  description = "Public DNS Domain to update"
  type        = string
  default     = "status.im"
}

variable "hosts_domain" {
  description = "Hosts DNS Domain to update"
  type        = string
  default     = "statusim.net"
}
