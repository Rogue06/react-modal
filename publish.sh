#!/bin/bash

echo "🔍 Vérification de la version..."

VERSION=$(node -p "require('./package.json').version")

# Vérifie si la version existe déjà sur GitHub Packages
STATUS=$(npm view @rogue06/react-modal@$VERSION --registry=https://npm.pkg.github.com 2>/dev/null)

if [ ! -z "$STATUS" ]; then
  echo "❌ La version $VERSION est déjà publiée sur GitHub Packages."
  echo "🔁 Merci d’incrémenter la version dans package.json avant de republier."
  exit 1
fi

echo "✅ Version $VERSION disponible, on peut publier !"

# (Suite identique au script précédent)
if [ -z "$GITHUB_TOKEN" ]; then
  echo "❌ GITHUB_TOKEN non défini."
  exit 1
fi

npm config set //npm.pkg.github.com/:_authToken=$GITHUB_TOKEN
npm run build
npm publish
npm config delete //npm.pkg.github.com/:_authToken

echo "🚀 Publication terminée avec succès !"