# magento-create-project

This is a magento installer using github action.
Clone & push or fork this repo and set appropriate the magento version in the [main.yml](https://github.com/seyuf/magento-create-project/blob/main/.github/workflows/main.yml) file.
The [action](https://github.com/MAD-I-T/magento-actions) will populate your repo with magento source code.
Don't forget to set the composer `COMPOSER_AUTH` in **settings > secrets > actions**.
To regenerate the repo just delete the magento directory.
