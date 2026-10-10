variable "bedrockagentcore_evaluators" {
  description = <<EOT
Map of bedrockagentcore_evaluators, attributes below
Required:
    - evaluator_name
    - level
Optional:
    - description
    - kms_key_arn
    - region
    - tags
    - evaluator_config (block):
        - code_based (optional, block):
            - lambda_config (optional, block):
                - lambda_arn (required)
                - lambda_timeout_in_seconds (optional)
        - llm_as_a_judge (optional, block):
            - instructions (required)
            - model_config (optional, block):
                - bedrock_evaluator_model_config (optional, block):
                    - additional_model_request_fields (optional)
                    - inference_config (optional, block):
                        - max_tokens (optional)
                        - stop_sequences (optional)
                        - temperature (optional)
                        - top_p (optional)
                    - model_id (required)
            - rating_scale (optional, block):
                - categorical (optional, block):
                    - definition (required)
                    - label (required)
                - numerical (optional, block):
                    - definition (required)
                    - label (required)
                    - value (required)
EOT

  type = map(object({
    evaluator_name = string
    level          = string
    description    = optional(string)
    kms_key_arn    = optional(string)
    region         = optional(string)
    tags           = optional(map(string))
    evaluator_config = optional(list(object({
      code_based = optional(list(object({
        lambda_config = optional(list(object({
          lambda_arn                = string
          lambda_timeout_in_seconds = optional(number)
        })))
      })))
      llm_as_a_judge = optional(list(object({
        instructions = string
        model_config = optional(list(object({
          bedrock_evaluator_model_config = optional(list(object({
            additional_model_request_fields = optional(string)
            inference_config = optional(list(object({
              max_tokens     = optional(number)
              stop_sequences = optional(list(string))
              temperature    = optional(number)
              top_p          = optional(number)
            })))
            model_id = string
          })))
        })))
        rating_scale = optional(list(object({
          categorical = optional(list(object({
            definition = string
            label      = string
          })))
          numerical = optional(list(object({
            definition = string
            label      = string
            value      = number
          })))
        })))
      })))
    })))
  }))
}

