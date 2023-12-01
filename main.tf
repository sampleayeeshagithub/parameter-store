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
    { name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.ayeeshadevops75.online:8080/", type = "String" },
    { name = "dev.roboshop.catalogue.MONGO_URL", value = "mongodb://mongodb-dev.ayeeshadevops75.online:27017/catalogue", type = "String" },
    { name = "dev.roboshop.catalogue.MONGO_ENDPOINT", value = "mongodb-dev.ayeeshadevops75.online", type = "String" },
    { name = "dev.roboshop.user.MONGO_URL", value = "mongodb://mongodb-dev.ayeeshadevops75.online:27017/users", type = "String" },
    { name = "dev.roboshop.user.REDIS_HOST", value = "redis-dev.ayeeshadevops75.online", type = "String" },
    { name = "dev.roboshop.cart.REDIS_HOST", value = "redis-dev.ayeeshadevops75.online", type = "String" },
    { name = "dev.roboshop.cart.CATALOGUE_HOST", value = "catalogue-dev.ayeeshadevops75.online", type = "String" },
    { name = "dev.roboshop.cart.CATALOGUE_PORT", value = "8080", type = "String" },
    { name = "dev.roboshop.shipping.DB_HOST", value = "mysql-dev.ayeeshadevops75.online", type = "String" },
    { name = "dev.roboshop.shipping.DB_USER", value = "root", type = "String" },
    { name = "dev.roboshop.shipping.CART_ENDPOINT", value = "cart-dev.ayeeshadevops75.online:8080", type = "String" },
    { name = "dev.roboshop.payment.CART_HOST", value = "cart-dev.ayeeshadevops75.online", type = "String" },
    { name = "dev.roboshop.payment.CART_PORT", value = "8080", type = "String" },
    { name = "dev.roboshop.payment.USER_HOST", value = "user-dev.ayeeshadevops75.online", type = "String" },
    { name = "dev.roboshop.payment.USER_PORT", value = "8080", type = "String" },
    { name = "dev.roboshop.payment.AMQP_HOST", value = "rabbitmq-dev.ayeeshadevops75.online", type = "String" },
    { name = "dev.roboshop.payment.AMQP_USER", value = "roboshop", type = "String" },
    { name = "dev.roboshop.dispatch.AMQP_HOST", value = "rabbitmq-dev.ayeeshadevops75.online", type = "String" },
    { name = "dev.roboshop.dispatch.AMQP_USER", value = "roboshop", type = "String" },

    ##
    { name = "dev.roboshop.docdb.endpoint", value = "dev-docdb-cluster.cluster-cmzmzlxo5mcv.us-east-1.docdb.amazonaws.com", type = "String" },

    ## Passwords
    { name = "dev.roboshop.mysql.DB_PASS", value = "RoboShop@1", type = "SecureString" },
    { name = "dev.roboshop.shipping.DB_PASS", value = "RoboShop@1", type = "SecureString" },
    { name = "dev.roboshop.rabbitmq.MQ_PASS", value = "roboshop123", type = "SecureString" },
    { name = "dev.roboshop.payment.AMQP_PASS", value = "roboshop123", type = "SecureString" },
    { name = "dev.roboshop.dispatch.AMQP_PASS", value = "roboshop123", type = "SecureString" },

    { name = "dev.roboshop.rds.master_username", value = "mysqlrdsadmin", type = "String" },
    { name = "dev.roboshop.rds.master_password", value = "RoboShop1234", type = "SecureString" },
    { name = "dev.roboshop.docdb.master_username", value = "docdbadmin", type = "String" },
    { name = "dev.roboshop.docdb.master_password", value = "RoboShop1234", type = "SecureString" },

  ]
}


