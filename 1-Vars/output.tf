output "sample_string" {
    value = var.sample_string
}

# In above case we are printing just variable, if variable is combination of strings.

output "sample_string1" {
    value = "value of sample_string = ${var.sample_string}"
}

# Output for 2nd element in the list 

output "sample_list2{
    value = var.sample_list[1]
}

#print number2 in sample_dictionary

output "sample_dictionary{
    value =var.sample_dictionary["number2]
}