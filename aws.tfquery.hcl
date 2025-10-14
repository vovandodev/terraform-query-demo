list "aws_instance" "all" {
  provider = aws
  config {
    filter {
      name   = "tag:Name"
      values = ["*${var.keyword}*"]
    }
  }
}

variable "keyword" {
  description = "Search keyword to find in instance names"
  type        = string
  default     = "terraform-query-demo"
}
