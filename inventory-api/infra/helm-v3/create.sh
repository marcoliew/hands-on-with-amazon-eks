environment=${1}

if [ -z "$environment" ]; then
    echo "No environment specified. Using 'development'"
    environment='development'
fi

base_domain="ekstest.sydney.edu.au"

helm upgrade --install \
    --namespace ${environment} \
    --create-namespace \
    --set baseDomain=${base_domain} \
    inventory-api-${environment} .