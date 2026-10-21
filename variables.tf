variable "location" {
    description = "Azure region"
    type        = string
    default     = "CanadaCentral"
}

variable "resource_group_name" {
    default = "rg-vm-terraform-demo"
}