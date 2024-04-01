# magento-create-project

This is a magento installer using github action.
Clone & push this repo and set appropriate the magento version in the [main.yml](https://github.com/seyuf/magento-create-project/blob/main/.github/workflows/main.yml) file. Or copy past the content of the file direclty in your repo.

**This feature requires read & write permissions to the repository. This is set through settings > actions > general > workflows permissions**

The [magento-actions](https://github.com/MAD-I-T/magento-actions) will populate your repo with magento source code.
Don't forget to set the composer `COMPOSER_AUTH` in **settings > secrets > actions > Repository Secrets**.
To regenerate the repo just delete the magento directory.


Reminder : 
Because a habit to follow https://12factor.net composer credentials are set through github secret option.

***Warning :*** Magento 2.3.3-p1 to 2.3.7-p2 and 2.4.0 to 2.4.3-p1 are compromised ([see bulletin](https://support.magento.com/hc/en-us/articles/4426353041293-Security-updates-available-for-Adobe-Commerce-APSB22-12-)). If you choose to install theses versions please apply the patch ([instructions here](https://gist.github.com/seyuf/0cd908a897f9b544d20de97dd2dcc25a))


1. Go to `Settings>Secrets>Repository secrets`
2. Create variable `COMPOSER_AUTH`
3. Add you composer auth as value e.g :
   `{"http-basic":{"repo.magento.com": {"username": "xxxxxxxxxxxxxx", "password": "xxxxxxxxxxxxxx"}}}`


<div align="center">
  <a href="https://www.youtube.com/watch?v=cqI79AKN7Gk"><img src="https://user-images.githubusercontent.com/3765910/154555377-2ab4d165-9bbb-42a4-b6cf-22586156477d.png" alt="install magento 2 using github actions"></a>
  <span>Install process in video</scan>
</div>

One can use our **[magento-devbox](https://github.com/MAD-I-T/magento-devbox)** as local dev environment, linux and mac os supported.

Ask questions here https://forum.madit.fr/t/install-magento-using-github-actions/13
