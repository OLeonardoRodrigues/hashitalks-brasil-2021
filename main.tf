/**
 * ![HashiTalks 2021 Speaker Card](/images/speaker_card.png "HashiTalks 2021 Speaker Card")
 *
 * # HashiTalks Brasil 2021
 *
 * ## [Terraform Avançado: Usando Objetos](https://www.youtube.com/watch?v=jQszqzCEhFk&list=PL81sUbsFNc5agdrEMDtU6IGyxBMv6Fq8i&index=19)
 *
 * <br/>
 */

resource "aws_subnet" "main_subnet" {
  vpc_id     = var.subnet.vpc_id
  cidr_block = var.subnet.cidr_block

  tags = {
    Name   = var.subnet.name
    Shared = var.subnet.shared
  }
}

resource "aws_subnet" "main_subnets" {
  for_each = var.subnets

  vpc_id     = each.value.vpc_id
  cidr_block = each.value.cidr_block

  tags = {
    Name   = each.key
    Shared = each.value.shared
  }
}
