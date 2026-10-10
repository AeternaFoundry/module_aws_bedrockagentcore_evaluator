output "bedrockagentcore_evaluators_created_at" {
  description = "Map of created_at values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "bedrockagentcore_evaluators_description" {
  description = "Map of description values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagentcore_evaluators_evaluator_arn" {
  description = "Map of evaluator_arn values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.evaluator_arn if v.evaluator_arn != null && length(v.evaluator_arn) > 0 }
}
output "bedrockagentcore_evaluators_evaluator_config" {
  description = "Map of evaluator_config values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.evaluator_config if v.evaluator_config != null && length(v.evaluator_config) > 0 }
  sensitive   = true
}
output "bedrockagentcore_evaluators_evaluator_id" {
  description = "Map of evaluator_id values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.evaluator_id if v.evaluator_id != null && length(v.evaluator_id) > 0 }
}
output "bedrockagentcore_evaluators_evaluator_name" {
  description = "Map of evaluator_name values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.evaluator_name if v.evaluator_name != null && length(v.evaluator_name) > 0 }
}
output "bedrockagentcore_evaluators_kms_key_arn" {
  description = "Map of kms_key_arn values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "bedrockagentcore_evaluators_level" {
  description = "Map of level values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.level if v.level != null && length(v.level) > 0 }
}
output "bedrockagentcore_evaluators_locked_for_modification" {
  description = "Map of locked_for_modification values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.locked_for_modification if v.locked_for_modification != null }
}
output "bedrockagentcore_evaluators_region" {
  description = "Map of region values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagentcore_evaluators_status" {
  description = "Map of status values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.status if v.status != null && length(v.status) > 0 }
}
output "bedrockagentcore_evaluators_tags" {
  description = "Map of tags values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bedrockagentcore_evaluators_tags_all" {
  description = "Map of tags_all values across all bedrockagentcore_evaluators, keyed the same as var.bedrockagentcore_evaluators"
  value       = { for k, v in aws_bedrockagentcore_evaluator.bedrockagentcore_evaluators : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

