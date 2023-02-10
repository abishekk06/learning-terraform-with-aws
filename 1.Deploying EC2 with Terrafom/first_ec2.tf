provider "aws" {
    region  = "ap-south-1"
    access_key  = "PUT-YOUR-ACCESS-KEY-HERE"
    secret_key  = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "myfirstEC2" {
    ami = "ami-01a4f99c4ac11b03c"
    instance_type   = "t2.micro"
}