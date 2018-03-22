# Vincit WordPress drop-ins

Customizations and improvements for [Seravo/wordpress](https://github.com/Seravo/wordpress). Inspired by [kehittamo/kehittamo-seravo-addons](https://github.com/kehittamo/kehittamo-seravo-addons).

## Why & how
[Seravo.com](https://seravo.com) uses an identical project layout in their production instances. It uses the same folder structure as [roots/bedrock](https://github.com/roots/bedrock) and has lots of built in goodies such as Composer, Xdebug and Mailcatcher.

Seravo/wordpress serves as a skeleton for a WordPress project. You manage WordPress and plugins with Composer so each invidual piece is version controlled separately. Things that are already version controlled (WordPress, existing themes and plugins from the WordPress.org repositories) are not committed to Git.

Composer can also be used to manage custom themes, but if the theme is used on one site only, it's not worth the effort.

## Usage
Clone [Seravo/wordpress](https://github.com/Seravo/wordpress), edit the values in config-sample.yml, and save the file as config.yml. If in doubt; follow the instructions in Seravo/wordpress.

```
git clone git@github.com:Seravo/wordpress.git wordpress.local
```

### Add this package
Run `composer require --dev vincit/wordpress` for the stable version.

Use `composer require --dev vincit/wordpress dev-master` to get the latest version. ~May~ will contain bugs. 

Finally run `vagrant up`.

Answer any questions Vagrant asks you. When the process completes, you should have the admin account credentials printed in the terminal, you can use those to log in. If the password doesn't work or you forgot it, you can reset it by running the install.sh script in the project root.

Look for further instructions in the generated project README.
