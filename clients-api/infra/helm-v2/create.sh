base_domain="ekstest.sydney.edu.au"

helm upgrade --install \
    --namespace development \
    --create-namespace \
    --set baseDomain=${base_domain} \
    clients-api-development .