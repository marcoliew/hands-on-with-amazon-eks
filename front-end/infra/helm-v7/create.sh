environment=${1}
tag=${2:="latest"}

if [ -z "$environment" ]; then
    echo "No environment specified. Using 'development'"
    environment='development'
fi

base_domain="ekstest.sydney.edu.au"
account_id=$(aws sts get-caller-identity --query "Account" --output text | xargs)
region=${AWS_REGION}

helm upgrade --install \
    --namespace ${environment} \
    --create-namespace \
    --set baseDomain=${base_domain} \
    --set aws.region=${region} \
    --set aws.accountId=${account_id} \
    --set image.tag=${tag} \
    front-end-${environment} .