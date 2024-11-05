environment_name = "test"

aws_region = "us-west-2"

# Database
neuro-ace-rds_DB_username                = "admin"
neuro-ace-rds_DB_name                    = "ORCL"
neuro-ace-rds_DB_allocated_storage       = 67
neuro-ace-rds_DB_performance_insights    = false
neuro-ace-rds_DB_multi_az                = false
neuro-ace-rds_DB_publicly_accessible     = true
neuro-ace-rds_DB_copy_tags_to_snapshot   = false
neuro-ace-rds_DB_deletion_protection     = false
neuro-ace-rds_DB_max_allocated_storage   = 1000


# Elastic Beanstalk Apps
EB_solution_stack_reg_name      = "64bit Windows Server 2019 (.*) running IIS 10.0"
web_eb_solution_stack_reg_name  = "64bit Amazon Linux 2 (.*) running Node.js 18"
EB_environment_instance_type    = "t3a.2xlarge"

# Networking Configuration
web_private_subnet_1       = "subnet-0750c06de598dd02b"
web_private_subnet_2       = "subnet-0b3f552436a984902"
app_private_subnet        = "subnet-0b216c039c9ca4c65"
db_private_subnet_1       = "subnet-06bedbeb79513154a"
db_private_subnet_2       = "subnet-09f539cb14601ce9e"

route53_zone_id = ""

aws_lb_listener_rule_mosaic_host_header            = "test-mosaic"
aws_lb_listener_rule_mosaic_priority               = 12

aws_lb_listener_rule_reactants_host_header         = "test-reactants"
aws_lb_listener_rule_reactants_priority            = 10

aws_lb_listener_rule_products_host_header          = "test-products"
aws_lb_listener_rule_products_priority             = 9

aws_lb_listener_rule_chemical_services_host_header = "test-chemical-services"
aws_lb_listener_rule_chemical_services_priority    = 11

aws_lb_listener_rule_jchem_microservices_host_header = "test-jchem-microservices"
aws_lb_listener_rule_jchem_microservices_priority    = 14


# MQ configuration
broker_engine_version = "5.16.5"

# EC2 instances configuration

ChemicalServicesAMI_name = "ami-TEST-ChemicalServicesGateway"
JChemAMI_name            = "ami-TEST-JChemServer"
CompRegAMI_name          = "ami-TEST-CompregInstances"
TitianMosaicAMI          = "ami-TEST-TitianMosaic"
