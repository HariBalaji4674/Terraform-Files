variable "instance_names"{
    type = list
    default = [
        "mongodb",
        "web",
        "cart",
        "catalogue",
        "reddis",
        "rabbitmq",
        "mysql",
        "shipping",
        "payment",
        "dispatch"
    ]
}