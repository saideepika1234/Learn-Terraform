variable "sample_string" {
    default ="Hello world"
}

## shell scripting euivalent is sample_string= "Hello world"
## To print in shell script we use echo echo sample_string =$sample_string

#output will be displayed in output.rf file

variable "sample_number" {
    default =123
}

variable "sample_boolean" {
    default = true
}

# Variable Types

variable "sample_list" {
    default = [
        100,
        "example",
        true,
        24.2
    ]
}

#Data inside the list can be any vaiable data type. Single variable can hold multiple values.

#We have a dictionary and in single varaibles will have multiple values and each value have seperate name
variable "sample_dictionary"{
    default ={
        number1 = 100
        string1="Hello"
        boolean="false"
        number2= 144.5
    }
}

#dictionary is more preferable than list when declaring the data.

variable "auto_num1"{}
#auto is the keyword

output "auto_num1"{
    value = var.auto_num1
}

variable "sample1"{}

output "sample1"{
    value = var.sample1
}