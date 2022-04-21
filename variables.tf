variable "keyname"{
type =string
description="Key Name Required: "
}
variable "accessKey"{
type =string
description="access key ID "
}
variable "secretKey"{
type =string
description="secret key  "
}

variable "ami" {}
variable "instance_type" {}

variable "main_vpc_cidr" {}
variable "public_subnet1" {}
variable "public_subnet2" {}
variable "private_subnet1" {}
variable "private_subnet2" {}

variable "engine" {}
variable "engine_version" {}     
variable "instance_class" {}
variable "name"  {}       
variable "username" {}  
variable "password" {} 
variable "parameter_group_name" {}

