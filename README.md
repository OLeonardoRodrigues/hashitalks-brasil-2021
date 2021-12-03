<!-- BEGIN_TF_DOCS -->
![HashiTalks 2021 Speaker Card](/images/speaker\_card.png "HashiTalks 2021 Speaker Card")

# HashiTalks Brasil 2021

## Terraform Avançado: Usando Objetos

### [Apresentação](https://www.youtube.com/watch?v=jQszqzCEhFk&list=PL81sUbsFNc5agdrEMDtU6IGyxBMv6Fq8i&index=19)

### [Slides](https://docs.google.com/presentation/d/1fK_fJb5fe49kckoVqr_CS6uWMS51blH_Jq_5k2exScQ/edit?usp=sharing)

<br/>

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.67.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.67.0 |

## Resources

| Name | Type |
|------|------|
| [aws_subnet.main_subnet](https://registry.terraform.io/providers/hashicorp/aws/3.67.0/docs/resources/subnet) | resource |
| [aws_subnet.main_subnets](https://registry.terraform.io/providers/hashicorp/aws/3.67.0/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| <a name="input_subnet"></a> [subnet](#input\_subnet) | Objeto que declara uma única subnet. | <pre>object({<br>    name       = string<br>    vpc_id     = string<br>    cidr_block = string<br>    shared     = optional(bool)<br>  })</pre> | <pre>{<br>  "cidr_block": "10.0.1.0/24",<br>  "name": "Main",<br>  "shared": true,<br>  "vpc_id": "0123456789012"<br>}</pre> |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Mapa de objetos que declaram várias subnets. | <pre>map(<br>    object({<br>      vpc_id     = string<br>      cidr_block = string<br>      shared     = bool<br>    })<br>  )</pre> | <pre>{<br>  "subnet1": {<br>    "cidr_block": "10.0.1.0/24",<br>    "shared": true,<br>    "vpc_id": "012345678901"<br>  },<br>  "subnet2": {<br>    "cidr_block": "10.0.2.0/24",<br>    "shared": false,<br>    "vpc_id": "012345678901"<br>  }<br>}</pre> |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet"></a> [subnet](#output\_subnet) | Conteúdo da variável subnet. |
| <a name="output_subnets"></a> [subnets](#output\_subnets) | Conteúdo da variável subnets. |
<!-- END_TF_DOCS -->
