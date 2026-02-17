


Ce projet automatise le déploiement d’une instance EC2 via OpenTofu, intégrée dans un pipeline GitLab CI. Nginx est installé sur la VM à l’aide d’un script shell qui déploie une image Nginx personnalisée. L’image GitLab est sécurisée et révisée automatiquement grâce à Plumber.

export AWS_ACCESS_KEY_ID=xxx
export AWS_SECRET_ACCESS_KEY=xxx
export AWS_DEFAULT_REGION=us-east-1
