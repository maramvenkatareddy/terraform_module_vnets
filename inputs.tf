variable "resource_group_details" {
    type = object ({
        name = string
        location = string
    })
}
variable "virual_network_details" {
    type = object ({
        name = string
        address_space = list(string)

    })
}
variable "subnet-details" {
    type = object({
        names = list(string)
    })
  
}