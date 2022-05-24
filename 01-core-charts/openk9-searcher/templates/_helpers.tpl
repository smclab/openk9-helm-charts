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

{{/*
Create Keycloak URL
*/}}
{{- define "helper.keycloakURL" -}}
{{- with .Values.keycloak -}}
{{- $port := ( .port | toString ) -}}
{{- printf "http://%s:%s" .host $port }}
{{- end }}
{{- end }}

{{/*
Create OpenK9 Datasource URL
*/}}
{{- define "helper.datasourceURL" -}}
{{- with .Values.openk9.datasource -}}
{{- $port := ( .port | toString ) -}}
{{- printf "http://%s:%s" .host $port }}
{{- end }}
{{- end }}

{{/*
Create OpenK9 Plugin Driver Manager URL
*/}}
{{- define "helper.pluginDriverURL" -}}
{{- with .Values.openk9.pluginDriverManager -}}
{{- $port := ( .port | toString ) -}}
{{- printf "http://%s:%s" .host $port }}
{{- end }}
{{- end }}
