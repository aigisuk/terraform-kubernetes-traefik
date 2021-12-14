variable "namespace" {
  description = "Namespace to install traefik chart into"
  type        = string
  default     = "traefik"
}

variable "traefik_chart_version" {
  description = "Version of Traefik chart to install"
  type        = string
  default     = "10.7.1" # See https://artifacthub.io/packages/helm/traefik/traefik for latest version(s)
}

variable "replica_count" {
  description = "Number of replica pods to create"
  type        = number
  default     = 1
}

variable "default_values" {
  description = "Specifies whether to use the traefik default values.yaml, or if set to anything else then to use your own custom values"
  type        = string
  default     = ""
}

variable "values_file" {
  description = "The name of the traefik helmchart values file to use"
  type        = string
  default     = "values.yaml"
}