variable "subnet" {
  description = "Objeto que declara uma única subnet."

  type = object({
    name       = string
    vpc_id     = string
    cidr_block = string
    shared     = optional(bool)
  })

  default = {
    name       = "Main"
    vpc_id     = "0123456789012"
    cidr_block = "10.0.1.0/24"
    shared     = true
  }
}

variable "subnets" {
  description = "Mapa de objetos que declaram várias subnets."

  type = map(
    object({
      vpc_id     = string
      cidr_block = string
      shared     = bool
    })
  )

  default = {
    subnet1 = {
      vpc_id     = "012345678901"
      cidr_block = "10.0.1.0/24"
      shared     = true
    }
    subnet2 = {
      vpc_id     = "012345678901"
      cidr_block = "10.0.2.0/24"
      shared     = false
    }
  }
}
