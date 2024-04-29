variable "COMPONENTS" {
    default = {
        cart = {
            instance_type = "t3.micro"
            volume_size = 5 # in GB <<----- I increased this!
            volume_type = "gp3"        
        },
        catalouge = {
            instance_type = "t3.medium"
            volume_size = 6 # in GB <<----- I increased this!
            volume_type = "gp3"             
        },
        payment = {
            instance_type = "t3.large"
            volume_size = 7 # in GB <<----- I increased this!
            volume_type = "gp3" 
        },
        shipping = {
            instance_type = "t2.micro"
            volume_size = 8 # in GB <<----- I increased this!
            volume_type = "gp3" 
        },
        user = {
            instance_type = "t3.micro"
            volume_size = 9 # in GB <<----- I increased this!
            volume_type = "gp3" 
        }
    }
}