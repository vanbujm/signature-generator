#!/bin/bash
git config --global user.email "$AZURE_EMAIL"
git config --global user.name "$AZURE_USERNAME"

git init
git remote add origin "https://$AZURE_USERNAME@signature-generator.scm.azurewebsites.net:443/signature-generator.git"
git add -A
git commit -m "$CIRCLE_BRANCH build#$CIRCLE_BUILD_NUM"
git push --force --set-upstream origin master