resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  type = var.parameters[count.index].type
  value = var.parameters[count.index].value
}

variable "parameters" {
  default = [
    {name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString"},
    {name = "prod.rds.master_username", value = "expense", type = "String"},
    {name = "prod.expense.frontend.backend_url", value = "http://backend-prod.ayeeshadevops75.online/", type = "String"},
    {name = "prod.rds.endpoint", value = "prod-mysql.cluster-cmzmzlxo5mcv.us-east-1.rds.amazonaws.com", type = "String"},
  ]
}

