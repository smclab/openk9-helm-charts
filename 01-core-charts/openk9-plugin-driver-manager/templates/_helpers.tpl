{{/*
Create Consul service hostname

Usage:
{{ include "helper.consulServiceAddress" (dict "context" $) }}

Params:
  - context - Dict - Required. The context for the template evaluation.

*/}}
{{- define "helper.consulServiceAddress" -}}
{{- $name := (include "common.names.name" .context) -}}
{{- printf "%s.%s" $name $.context.Release.Namespace }}
{{- end }}
