resource "aws_security_group" "redis_security_group" {
  name_prefix = var.security_group_name_prefix
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.security_group_ingress_from_port
    to_port     = var.security_group_ingress_to_port
    protocol    = var.security_group_ingress_protocol
    cidr_blocks = var.security_group_ingress_cidr
  }
}

resource "aws_elasticache_subnet_group" "redis_subnet_group" {
  name       = var.subnet_group_name
  subnet_ids = var.subnet_ids
}

resource "aws_elasticache_cluster" "redis_cluster" {
  cluster_id           = var.cluster_id
  engine               = "redis"
  engine_version       = var.cluster_engine_version
  node_type            = var.cluster_node_type
  num_cache_nodes      = var.cluster_cache_nodes_count
  parameter_group_name = var.cluster_parameter_group_name
  port                 = var.cluster_port
  subnet_group_name    = aws_elasticache_subnet_group.redis_subnet_group.name
  # security_group_ids   = aws_elasticache_subnet_group.redis_subnet_group.id

}
