# Vincit WordPress drop-ins

Customizations and improvements for [Seravo/wordpress](https://github.com/Seravo/wordpress). Inspired by [kehittamo/kehittamo-seravo-addons](https://github.com/kehittamo/kehittamo-seravo-addons).

## Why & how
[Seravo.com](https://seravo.com) uses an identical project layout in their production instances. It uses the same folder structure as [roots/bedrock](https://github.com/roots/bedrock) and has lots of built in goodies such as Composer, Xdebug and Mailcatcher.

Seravo/wordpress serves as a skeleton for a WordPress project. You manage WordPress, themes and plugins with Composer so each invidual piece is version controlled separately. Things that are already version controlled (WordPress, existing themes and plugins from the WordPress.org repositories) are not committed to Git.

## Usage
Clone [Seravo/wordpress](https://github.com/Seravo/wordpress), edit the values in config-sample.yml, and save the file as config.yml. If in doubt; follow the instructions in Seravo/wordpress.

```
git clone git@github.com:Seravo/wordpress.git wordpress.local
```

### Add this package
~~Run `composer require --dev vincit/wordpress` for the stable version.~~

Use `composer require --dev vincit/wordpress dev-master` to get the latest version.

Finally run `vagrant up`.

### Commit the project
After running `vagrant up`, you're ready to version control the project. Keep the history of Seravo/wordpress; that means do not delete the .git folder.

Running `git status` should look something like this:
```
# On branch: master  |  [*] => $e*
#
➤ Changes not staged for commit
#
#       modified:  [1] .gitignore
#       modified:  [2] composer.json
#       modified:  [3] composer.lock
#        deleted:  [4] config-sample.yml
#
➤ Untracked files
#
#      untracked:  [5] config.yml
#
```

Make the initial commit:
```
git add .gitignore composer.json composer.lock config-sample.yml config.yml && git commit -m "Initial commit"
```

Rename the origin remote:
```
git remote rename origin seravo
```

Add a new origin remote:
```
git remote add origin git@bitbucket.com:vendor/project.git
```

Push into the new remote:
```
git push -u origin master
```
