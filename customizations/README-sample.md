# Project

This project is built on [Seravo/wordpress][1], [Vincit/wordpress][2] & [Vincit/wordpress-theme-base][3] which are documented at their corresponding locations. This is a guide on:

- how to setup the project initially
- how to get the project running on your local machinee
- how to update the project dependencies
- how to deploy the project to production (using CI)


## Setting it up initially
You should've cloned [Seravo/wordpress][1], and installed [Vincit/wordpress][2] by now. Your Vagrant machine should be up and running. If not, go back to [Vincit/wordpress][2] and read what you have do. If you haven't used Vagrant before, check [Seravo/wordpress][1] for guidance.

If Vagrant is indeed running, you're ready to version control the project. [Seravo/wordpress][1] is the actual project base, and the clone you created will work as a fork. It remains upgradeable, but allows us to save our customizations. [Vincit/wordpress][2] provides some default customizations and improvements, and you can create your own should you want to.

### In case you're using [Vincit/wordpress-theme-base][3]
If the theme you're creating isn't going to be used in multiple projects, commit the theme directly into this project, **and do not require it with Composer**. If you want to use Composer to manage the theme, **do not commit the theme into this repository**.

Composer simply brings an extra `composer update` into play every time you want to update your theme in the project.

If you have problems with the theme, consult the README in it.

### Committing the project

Running `git status` should look something like this:
```
# On branch: master  |  [*] => $e*
#
➤ Changes not staged for commit
#
#       modified:  .gitignore
#       modified:  composer.json
#       modified:  composer.lock
#       modified:  README.md
#        deleted:  config-sample.yml
#
➤ Untracked files
#
#      untracked:  config.yml
#      untracked:  customizations/bin
#      untracked:  htdocs/wp-content/themes/wordpress-theme-base # or whatever it was renamed to
#
```

Make the initial commit:
```
git add .gitignore composer.json composer.lock config-sample.yml config.yml README.md customizations/bin
# git add htdocs/wp-content/themes/wordpress-theme-base # commit the theme if not using Composer for managing the theme
git commit -m "Initial commit"
```

Rename the origin remote:
```
git remote rename origin seravo
```

This is to keep the project upgradeable with `git pull seravo master`.

Add a new origin remote:
```
git remote add origin git@bitbucket.com:vendor/project.git
```

Push into the new remote:
```
git push -u origin master
```

## Getting it running
In order to get an existing project running, simply clone it, and run vagrant up.

```
git clone git@github.com:Vincit/wordpress-demo.git
cd wordpress-demo
vagrant up

# navigate to https://wordpressvincitio.local/
```

Depending on how you've set things up and the position of the moon, you may or may not need to build your theme(s) afterwards.

## Update dependencies
Simply run `composer update` in the project directory. Please note that Composer is destructive in behaviour, it might overwrite your local changes in some situations, be sure to save, commit & push your changes beforehand.

Any plugins or themes should update painlessly, but [Vincit/wordpress][2] may report conflicting files. You should just respond "yes" if it asks you to discard your local changes. If you had any local modifications, you can use `git status` and `git diff` to find out which files changed and do the necessary procedures to keep your changes. Typically conflicts happen in CircleCI config or in custom scripts.

If a conflict happens and you do not want any changes to a file like the CircleCI config, you can run `git checkout .circleci/config.yml` to get the old version back.

Commit whatever is left to commit when you're happy with the update.

## Deploy
It is recommended to use CircleCI for deploying your project. You can run automated tests to make sure the build didn't break, and automatically deploy to production if it doesn't. It leaves very little margin for human error once you get the config right.

Follow CircleCI's instructions on how to get started, the config file is preconfigured and almost ready to go for CircleCI 2.0.

If you use Private Packagist (packagist.com), you need to provide an composer auth token, and provide it as an environment variable. You can do this from the CircleCI dashboard.
You also have to provide the password to your production instance, so CircleCI can deploy the files. The environment variable is SSHPASS, you can also do this from the dash.

The config in this repository deploys to Seravo / WP-palvelu. If your environment is different, that's fine too. [Vincit/wordpress-demo](https://github.com/Vincit/wordpress-demo/blob/master/.circleci/config.yml) shows how you can deploy to traditional WordPress installations that do not follow the bedrock structure.

[1]: https://github.com/Seravo/wordpress
[2]: https://github.com/Vincit/wordpress
[3]: https://github.com/Vincit/wordpress-theme-base
