variable "username" {
  type = list
  default = ["tobuser1","tobuser2","tobuser3","tobuser4","tobuser5"]
}

resource "aws_iam_user" "tobuser" {
  name= var.username[count.index]
  count = 5
  path = "/system/"
}
