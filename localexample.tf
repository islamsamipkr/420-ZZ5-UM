locals {
  service_name = "forum"
  owner        = "Community Team"
}
output "print"{
      value = local.service_name
}
output "secondprint"{
      value = local.owner
}
