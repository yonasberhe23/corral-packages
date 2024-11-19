#!/bin/bash

set -x
set -eu

ENV_FILE="${HOME}/.env"

# Set default values for variables
CORRAL_rancher_host="${CORRAL_rancher_host:-}"

# Create or truncate the .env file
> "$ENV_FILE"

# Write environment variables to the .env file
echo "CYPRESS_VIDEO=false" >> "$ENV_FILE"
echo "CYPRESS_VIEWPORT_WIDTH=1000" >> "$ENV_FILE"
echo "CYPRESS_VIEWPORT_HEIGHT=660" >> "$ENV_FILE"
echo "TEST_BASE_URL=https://${CORRAL_rancher_host}/dashboard" >> "$ENV_FILE"
echo "TEST_USERNAME=${CORRAL_rancher_username}" >> "$ENV_FILE"
echo "TEST_PASSWORD=${CORRAL_rancher_password}" >> "$ENV_FILE"
echo "TEST_SKIP_SETUP=true" >> "$ENV_FILE"
echo "TEST_SKIP=setup" >> "$ENV_FILE"
echo "AWS_ACCESS_KEY_ID=${CORRAL_aws_access_key}" >> "$ENV_FILE"
echo "AWS_SECRET_ACCESS_KEY=${CORRAL_aws_secret_key}" >> "$ENV_FILE"
echo "AZURE_CLIENT_ID=${CORRAL_azure_client_id}" >> "$ENV_FILE"
echo "AZURE_CLIENT_SECRET=${CORRAL_azure_client_secret}" >> "$ENV_FILE"
echo "AZURE_AKS_SUBSCRIPTION_ID=${CORRAL_azure_subscription_id}" >> "$ENV_FILE"
echo "GITHUB_USER1=${CORRAL_github_user1}" >> "$ENV_FILE"
echo "GITHUB_PASSWORD1=${CORRAL_github_password1}" >> "$ENV_FILE"
echo "GITHUB_USER2=${CORRAL_github_user2}" >> "$ENV_FILE"
echo "GITHUB_PASSWORD2=${CORRAL_github_password2}" >> "$ENV_FILE"
echo "GITHUB_CLIENT_ID=${CORRAL_github_client_id}" >> "$ENV_FILE"
echo "GITHUB_CLIENT_SECRET=${CORRAL_github_client_secret}" >> "$ENV_FILE"
echo "GOOGLE_CLIENT_ID=${CORRAL_google_client_id}" >> "$ENV_FILE"
echo "GOOGLE_CLIENT_SECRET=${CORRAL_google_client_secret}" >> "$ENV_FILE"
echo "GOOGLE_REFRESH_TOKEN=${CORRAL_google_refresh_token}" >> "$ENV_FILE"