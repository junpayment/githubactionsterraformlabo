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
