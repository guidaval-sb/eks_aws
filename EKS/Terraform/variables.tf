variable "cluster_name" {
  type    = string
  default = "eks-terraform"
}

variable "nodes_name" {
  type    = string
  default = "tf-ndg"
}

variable "service_role_arn" {
  type    = string
  default = "arn:aws:iam::684145503573:role/LabRole"
}

variable "instance_role_arn" {
  type    = string
  default = "arn:aws:iam::684145503573:instance-profile/LabInstanceProfile"
}
