variable "project" {
    default = "roboshop"
  
}

variable "environment" {
    default = "dev"
  
}

variable "commponent" {
    default = "cart"
  
}

variable "commn_tags" {
    default = {
        project = "roboshop"
        terraform ="true"
    }
  
}