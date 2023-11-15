resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  type = var.parameters[count.index].type
  value = var.parameters[count.index].value
  overwrite= true
  key_id = "arn:aws:kms:us-east-1:299627189740:key/20d4c346-4cde-4977-b03b-c758bef825a5"
}

variable "parameters" {
  default = [
#    {name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString"},
#    {name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String"},
#    {name = "prod.expense.frontend.backend_url", value = "http://backend-prod.ayeeshadevops75.online/", type = "String"},
#    {name = "prod.rds.endpoint", value = "prod-mysql.cluster-cmzmzlxo5mcv.us-east-1.rds.amazonaws.com", type = "String"},
#    {name = "prod.backend.app_version", value = "1.0.0", type = "String"},
#    {name = "prod.frontend.app_version", value = "1.0.0", type = "String"},


    #dev
#    {name = "dev.expense.frontend.backend_url", value = "http://backend-dev.ayeeshadevops75.online/", type = "String"},

    {name = "jenkins_password", value = "admin123", type = "String"},
    {name = "artifactory_username", value = "admin", type = "String"},
    {name = "artifactory_password", value = "Admin123", type = "String"},
    {name = "ssh_username", value = "centos", type = "String"},
    {name = "ssh_password", value = "DevOps321", type = "SecureString"},

# Roboshop dev env
    { name = "dev.roboshop.frontend.catalogue_url", value = "http://catalogue-dev.ayeeshadevops75.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.cart_url", value = "http://cart-dev.ayeeshadevops75.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.user_url", value = "http://user-dev.ayeeshadevops75.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.shipping_url", value = "http://shipping-dev.ayeeshadevops75.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.ayeeshadevops75.online:8080/", type = "String" },  ]
}


