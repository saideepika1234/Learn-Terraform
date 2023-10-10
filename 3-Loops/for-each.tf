resource "null_resouce" "fruits"{
    for_each = var.fruits

    provisioner "local_exec" {
        command = "fruitname : ${each.key} - ${each.value}
        }

}

variable "fruits"{
    default = {
        apple = 10
        oranges = 100
        banana = 50
    }
}