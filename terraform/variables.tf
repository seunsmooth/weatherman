variable "region" {
  default = "eu-west-1"
}

variable "managed_by" {
  default     = "terraform"
  description = "terraform"
}

variable "app_name" {
  default     = "weatherman"
  description = "Name of the application"
}

variable "environment" {
  default     = "prod"
  description = "Name of the environment. e.g. prod, qa, prod"
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/16"
}

variable "az_count" {
  description = "Number of availability zones to use"
  default     = 2
}

variable "repository_name" {
  default     = "weatherman"
  description = "Name for Docker repo"
}

// SNS Variables
variable "sns_ecs_topic" {
  default = "ecs_sink"
  description = "sns_ecs_topic"
}

variable "alarms_email" {
  default     = "seunsmooth@yahoo.com"
  description = "alarms_email"
}

variable "resource_high_threshold" {
  default     = "70"
  description = "The maximum percentage of Resource  utilization average."
}

variable "resource_low_threshold" {
  default     = "10"
  description = "The minimum percentage of Resource  utilization average."
}

variable "running_tasks_threshold" {
  description = "Period to evaluate alarm."
  default     = "2"
}

variable "resource_utilization_period" {
  #type        = string
  description = "Period to evaluate alarm."
  default     = "180"
}
variable "desired_container_instances" {
  description = "desired_container_instances"
  default     = "2"
}
variable "running_port" {
  description = "app running on port."
  default     = "3000"
}
