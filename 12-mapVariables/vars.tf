variable "COMPONENTS" {
    default = {
        cart = {
            instance_type = "t3.micro"
        },
        catalouge = {
            instance_type = "t3.medium"
        },
        payment = {
            instance_type = "t3.large"
        },
        shipping = {
            instance_type = "t2.micro"
        },
        user = {
            instance_type = "t3.micro"
        }
    }
}