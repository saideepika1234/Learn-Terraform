resource "null_resouce" "null"{
    count=10
}

variable "fruits"{
    default = ["apple", "banana","mango"]

}

resource "null_resouce" "fruits"{
    count = length(var.fruits)

    provisioner "local_exec" {
        command = ${var.fruits[count.index]}
    }
    
}