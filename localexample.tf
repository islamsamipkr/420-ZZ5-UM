locals {
  service_name = "forum"
  owner        = "Community Team"
  lengthofService_name=length(local.service_name)
}
output "print"{
      value = local.service_name
}
output "secondprint"{
      value = local.owner
}

output "thirdprint"{
      value=local.lengthofService_name
}
