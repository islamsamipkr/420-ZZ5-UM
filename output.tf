output "print"{
    value = local.servicename
}
output "secondprint"{
    value = local.forum
}

output "lengthsa"{
    value=local.lengthsa
}
output "lengthforum"{
    value=local.lengthforum
}

output "countNumber"{
    value=var.countNumber
}
output "wintersportslist"{
    value=[for sport in local.winterlistOfSports:sport]
}

