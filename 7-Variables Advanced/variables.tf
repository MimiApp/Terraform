# Below is the variables blocks
variable "ec2_name_tag" {
  default = ["firstinstance", "secondinstance"]
}

variable "instance_type" {
  #   0          1          2
  default = ["t2.medium", "t2.micro"]
  type    = list(string)
}
variable "ami_ids" {
  default = {
    linux  = "ami-0889a44b331db0194",
    ubuntu = "ami-007855ac798b5175e"
  }
}


