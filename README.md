# Keycloak external Authenticator Demo
Show sample implementation for using external auth provider in keycloak

- [Keycloak external Authenticator Demo](#keycloak-external-authenticator-demo)
  - [Using](#using)
    - [Users](#users)
    - [Federation Szenarios:](#federation-szenarios)
      - [Use Legacy System aus Authentication Provider](#use-legacy-system-aus-authentication-provider)
    - [Testing Keycloak e-mails](#testing-keycloak-e-mails)

## Using

Keycloak is available at [localhost:8080](http://localhost:8080/). Another Keycloak (acting as 3rd Party OAuth server) is available at [localhost:8180](http://localhost:8180/).

To create new setup sql dump:
```
./bin/dev-dump-sql-docker.sh 

```

### Users

* master Realm:
  * admin / admin
* Apps Realm (regular Keycloak)
  * user / user
* Legacy Realm (3rd Party Keycloak)
  * legacy / legacy

### Federation Szenarios:

#### Use Legacy System aus Authentication Provider

To get the redirect working add a DNS alias, e.g. `/etc/hosts`:

```
# fake localhost with custom domain
127.0.0.1 3rdparty
```

Now the [login](http://localhost:8080/auth/realms/apps/account) is possible directly with one of the app user or by using one of the legacy user:

![](docs/images/scenario1_legacy_as_oauth_provider.png)

But it's only working when via frontend redirect. One possibility would be to hide the legacy login option and use `kc_idp_hint` as URL parameter:

![](docs/images/scenario1_legacy_server_config.png)

But this would lead to having each frontend app know which is a legacy user.

### Testing Keycloak e-mails
The local Keycloak server includes MailDev, a mock SMTP server that you can use to receive and view Keycloak e-mails. It is available on <http://localhost:9999>.

To set up the local Keycloak server to send e-mails to MailDev:

1. Log in to [the local Keycloak server](http://localhost:8080).

2. Go to the “Email” tab in “Realm Settings”

3. Enter the following details:

    - Host: **maildev**

    - From: **keycloak@keycloak**

4. Click on “Save”

5. Click on “Admin” in the top-right-hand corner of the page, and click on “Manage Account”

6. Add an e-mail address to the admin account.

    It doesn’t matter what e-mail address you add, as all e-mails will be caught by MailDev. But you do need to add one, otherwise Keycloak will not send e-mails for this account.

The local Keycloak server should now be set up to send e-mails to MailDev. To check that it’s working:

1. Click on the “Back to Security Admin Console” link

2. Click on the “Login” tab in “Realm Settings”

3. Enable “Forgot password”, and click on “Save”

4. Sign out.

5. On the Keycloak log in screen, click on the “Forgot your password?” link

6. Enter your username (**admin**) in the text field, and submit the form.

7. Visit [MailDev](http://localhost:9999). You should see a reset password e-mail from Keycloak.