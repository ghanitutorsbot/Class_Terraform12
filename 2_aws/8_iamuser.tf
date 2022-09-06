resource "aws_iam_user" "myuser" {
  for_each = toset(["TJack", "TJames", "TMadhu", "TDave"])
  name     = each.key
}

resource "aws_iam_user" "iamuser" {
  name = "user10"
  

}
