
variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "countNumber"{
  type=number
  default=0
}
variable "force_map" {​
  type = map(string)​
  default = {​
    luke  = "jedi"​
    yoda  = "jedi"​
    darth = "sith"​
  }​
}​
