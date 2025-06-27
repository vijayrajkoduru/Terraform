variable "ami_id" {
  
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t3.small"
  
}

variable "instances" {
    default = ["orange","banana","coconut", "kiran"]
  
}

variable "zone_id" {
  default = "Z05476892IBG9W47WAZ1Z"
  
}

variable "domain_name" {
  default = "vrushaba.shop"
  
}