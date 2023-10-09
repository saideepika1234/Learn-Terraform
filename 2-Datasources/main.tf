data "aws_security_groups" "test"{}

output all_sg {
    value= data.aws_security_groups.test.id
}

data "aws_security_group" "single"{
    count = length(data.aws_security_groups.test.ids)
    id=aws.aws_security_groups.test.ids[count.index]
}

output single_sg {
    value= data.aws_security_group.single.id
}
