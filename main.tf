terraform {
  cloud {
    organization = "junpaymentt"

    workspaces {
      name = "test"
    }
  }
}

resource "null_resource" "thisisnull" {
  provisioner "local-exec" {
    command = "echo ${terraform.workspace}"
  }
}

resource "null_resource" "thisisnull2" {
  provisioner "local-exec" {
    command = "echo ${terraform.workspace}_2"
  }
}
