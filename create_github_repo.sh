#!/bin/bash

# Cat le token depuis le fichier
TOKEN=$(cat $GITHUB_TOKEN_PATH)

# Demander à l'utilisateur de saisir le nom du dépôt
read -p "Nommer votre repo: " REPO_NAME

# Demander à l'utilisateur de saisir la description du dépôt
read -p "Petite description: " REPO_DESCRIPTION

# Exécuter la commande curl pour créer le dépôt
curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/user/repos \
  -d "{
    \"name\": \"$REPO_NAME\",
    \"description\": \"$REPO_DESCRIPTION\",
    \"homepage\": \"https://github.com\",
    \"private\": false,
    \"is_template\": true
  }"

echo "Dépôt créé avec succès!"
