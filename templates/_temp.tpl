{{- define "charts.lables" }}
labels:
  app.kubernetes.io/name: {{ .Release.Name }}
  app.kubernetes.io/part-of: {{ .Release.Name }}
  app.kubernetes.io/managed-by: "{{ $.Release.Service }}"
  app.kubernetes.io/nginx-version: "{{ $.Chart.AppVersion }}"
{{- end }}

{{- define "charts.selector" }}
selector:
  app.kubernetes.io/name: {{ .Release.Name }}
  app.kubernetes.io/part-of: {{ .Release.Name }}
  app.kubernetes.io/managed-by: "{{ $.Release.Service }}"
  app.kubernetes.io/nginx-version: "{{ $.Chart.AppVersion }}"
{{- end }}

{{- define "charts.matchLabels" }}
matchLabels:
  app.kubernetes.io/name: {{ .Release.Name }}
  app.kubernetes.io/part-of: {{ .Release.Name }}
  app.kubernetes.io/managed-by: "{{ $.Release.Service }}"
  app.kubernetes.io/nginx-version: "{{ $.Chart.AppVersion }}"
{{- end }}