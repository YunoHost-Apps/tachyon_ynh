The admin password file is created after first opening the admin UI!

Be sure to immediately change the default password!

Open Tachyon's admin UI `https://__DOMAIN____PATH__/app/?admin` to configure your mail server settings. Login with user "admin" and password from the file `__INSTALL_DIR__/app/data/_data_/_default_/admin_password.txt`.

In particular, to be able to send emails, go to the admin UI, in the "Domains" tab.
Click on "+ Add Domain", add your domain name __DOMAIN__, click on "autoconfig", go in the "SMTP" tab and check "Use authentication".

Users already logged in to the YunoHost portal are signed in to Tachyon automatically (SSO).

## Install on a subdomain

You may experience login issues when __APP__ is installed on a subdomain ("_Access denied - Disallowed Sec-Fetch Dest: document Mode: navigate Site: cross-site User: true_"). In that case add the following line to the `[security]` section of `__INSTALL_DIR__/app/data/_data_/_default_/configs/application.ini`:
```
secfetch_allow = "dest=document,mode=navigate,site=same-site"
```
