#!/bin/bash
# ============================================================
# Setup para deploy multicloud local (AWS LocalStack + Azure LocalStack)
# Uso: source ./setup-local.sh && terraform plan -out plan.out
# ============================================================

# --- AWS LocalStack ---
export AWS_ACCESS_KEY_ID="test"
export AWS_SECRET_ACCESS_KEY="test"
export AWS_DEFAULT_REGION="us-east-1"

# --- Azure LocalStack ---
# "environment=stack" faz o azurerm consultar este host para descobrir
# os endpoints (auth + ARM) em vez de usar os da nuvem real.
# O LocalStack Azure alpha deve responder em /metadata/endpoints
export ARM_METADATA_HOST="localhost:4567"

# Com ARM_ACCESS_TOKEN setado, o azurerm pula o fluxo OAuth (client_credentials)
# e usa este token diretamente — resolve o erro AADSTS700038
export ARM_ACCESS_TOKEN="localstack-fake-token"

export ARM_SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
export ARM_TENANT_ID="00000000-0000-0000-0000-000000000000"
export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
export ARM_CLIENT_SECRET="localstack-dummy-secret"

echo "✅ Env vars configuradas para deploy local multicloud"
echo "   AWS  → http://localhost:4566"
echo "   Azure → http://localhost:4567"
echo ""
echo "Agora execute: terraform plan -out plan.out"