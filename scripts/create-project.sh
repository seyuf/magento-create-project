#!/usr/bin/env bash

INPUT_MAGENTO_VERSION="2.3.1"
set -e

PROJECT_PATH="$(pwd)"


echo "currently in $PROJECT_PATH"

subVersion=${INPUT_MAGENTO_VERSION:2:1}


if [ -n "$INPUT_MAGENTO_VERSION" ]
then
  case "$subVersion" in
    3)
        /usr/local/bin/composer self-update --1 &&
      update-alternatives --set php /usr/bin/php7.1 &&
      composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition=${INPUT_MAGENTO_VERSION}
      ;;
    4)
      update-alternatives --set php /usr/bin/php7.3 &&
      composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition=${INPUT_MAGENTO_VERSION}
      ;;
    *) echo "This version $INPUT_MAGENTO_VERSION of magento is not recognized" && exit 1 ;;
   esac
else
  echo "You must specify a magento version"
  exit 1;
fi

ls -lath

mv project-community-edition magento

git config user.name github-actions
git config user.email github-actions@github.com
git add magento/.gitignore
git commit -m 'added gitignore'
git add magento
git commit -m "add magento project"
git push
