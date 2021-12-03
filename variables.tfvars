subnet = {
  name       = "Main"
  vpc_id     = "0123456789012"
  cidr_block = "10.0.1.0/24"
  shared     = true
}

subnets = {
  subnet1 = {
    vpc_id     = "012345678901"
    cidr_block = "10.0.1.0/24"
    shared     = true
  }
  subnet2 = {
    vpc_id     = "012345678901"
    cidr_block = "10.0.2.0/24"
    shared     = false
  }
}
