# magento-create-project

This is a magento installer using github action.
Clone & push this repo and set appropriate the magento version in the [main.yml](https://github.com/seyuf/magento-create-project/blob/main/.github/workflows/main.yml) file. Or copy past the content of the file direclty in your repo.
The [magento-actions](https://github.com/MAD-I-T/magento-actions) will populate your repo with magento source code.
Don't forget to set the composer `COMPOSER_AUTH` in **settings > secrets > actions**.
To regenerate the repo just delete the magento directory.


Reminder : 
Make sure you use ***actions/checkout@v2*** before the action as in the sample main.yml file.
Because a habit to follow https://12factor.net composer credentials are set through github secret option.


1. Go to `Settings>Secrets`
2. Create variable `COMPOSER_AUTH`
3. Add you composer auth as value e.g :
   `{"http-basic":{"repo.magento.com": {"username": "xxxxxxxxxxxxxx", "password": "xxxxxxxxxxxxxx"}}}`


<div align="center">
  <a href="https://www.youtube.com/watch?v=cqI79AKN7Gk"><img src="https://user-images.githubusercontent.com/3765910/154555377-2ab4d165-9bbb-42a4-b6cf-22586156477d.png" alt="install magento 2 using github actions"></a>
  <span>Install process in video</scan>
</div>
