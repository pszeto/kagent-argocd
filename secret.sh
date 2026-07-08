kubectl apply -f- <<EOF
apiVersion: v1
kind: Secret
type: Opaque
metadata:
  name: enterprise-kagent-license
  namespace: kagent
stringData:
  enterprise-kagent-license-key: "${GLOO_KAGENT_LICENSE_KEY}"
---
apiVersion: v1
kind: Secret
type: Opaque
metadata:
  name: enterprise-agentgateway-license
  namespace: agentgateway-system
stringData:
  enterprise-agentgateway-license-key: "${GLOO_AGENTGATEWAY_LICENSE_KEY}"
---
apiVersion: v1
kind: Secret
metadata:
  name: kagent-openai
  namespace: kagent
type: Opaque
stringData:
  OPENAI_API_KEY: "${OPENAI_API_KEY}"
EOF