variable "vpc_name" {
  description = "vpc name"
  type        = any
  default     = {}
}

variable "vpc_id" {
  description = "vpc id"
  type        = any
  default     = {}
}

variable "vpc_peering_name" {
  description = "vpc peering name"
  type        = string
}

variable "peer_vpcs" {
  description = "A list of peer virtual private clouds"
  type        = any
  default     = [
    {
      name                              = "vpc name"
      id                                = "vpc id"
      auto_accept                       = true
      allow_remote_vpc_dns_resolution   = true

      route_table_ids                   = ["route table ids"]
      destination_cidr_blocks           = ["cidr blocks"]         
      reverse_route_table_ids           = ["reverse route table ids"]
      reverse_destination_cidr_blocks   = ["reverse destination cidr blocks"]
    }
  ]
}