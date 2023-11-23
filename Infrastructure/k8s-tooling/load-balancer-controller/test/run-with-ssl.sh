base_domain="ekstest.sydney.edu.au"
helm upgrade --install sample-app --set baseDomain=${base_domain} --set ssl.enabled=true .