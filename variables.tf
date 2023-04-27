
# Subnet
variable "subnet_ids" {
  description = "Lista de IDs das sub-redes onde o Redis será criado"
  type        = list(string)
}
variable "subnet_group_name" {
	description = "Nome do subnet group do Redis"
	type        = string
}

# Segurança
variable "security_group_name_prefix" {
	description = "Prefixo do nome do security group"
	type        = string
}

variable "vpc_id" {
  description = "ID da VPC onde o Redis será criado"
  type        = string
}

variable "security_group_ingress_from_port" {
	description = "Porta de origem permitida para o ingresso de tráfego no security group"
	type        = number
}

variable "security_group_ingress_to_port" {
	description = "Porta de destino permitida para o ingresso de tráfego no security group"
	type        = number
}

variable "security_group_ingress_protocol" {
	description = "Protocolo permitido para o ingresso de tráfego no security group"
	type        = string
}

variable "security_group_ingress_cidr" {
	description = "CIDR permitido para o ingresso de tráfego no security group"
	type        = list(string)
}

# Cluster
variable "cluster_id" {
  description = "ID do Redis Cluster"
  type        = string
}

variable "cluster_node_type" {
  description = "Tipo de nó do Redis Cluster"
  type        = string
}

variable "cluster_engine_version" {
  description = "Versão do motor do Redis Cluster"
  type        = string
}

variable "cluster_parameter_group_name" {
  description = "Nome do grupo de parâmetros do Redis Cluster"
  type        = string
}

variable "cluster_port" {
  description = "Porta do Redis Cluster"
  type        = string
}

variable "cluster_cache_nodes_count" {
  description = "Número de nós do Redis Cluster"
  type        = number
}

# variable "security_group_ids" {
#   description = "Lista de IDs dos grupos de segurança associados ao Redis"
#   type        = list(string)
# }
