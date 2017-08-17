# Vincit WordPress

Customizations and improvements for [Seravo/wordpress](https://github.com/Seravo/wordpress). Inspired by [kehittamo/kehittamo-seravo-addons](https://github.com/kehittamo/kehittamo-seravo-addons).

## Usage
Clone [Seravo/wordpress](https://github.com/Seravo/wordpress), change values in config-sample.yml, and save it as config.yml.

### Modify your composer.json
Add the following under extra and be exact. Composer doesn't really like it's users.
```
"dropin-paths": {
  ".": ["type:seravo-wordpress-dropin"]
}
```

### Add this package
Run `composer require --dev vincit/wordpress [dev-master]`.

Finally run `vagrant up`.

## Developing this further
As you probably don't want to commit every change you make, this is for you. As Composer installs this as a drop-in, you have to do some interesting things to make your life easier.

One solution is to clone this in a different directory than Seravo/wordpress, and copy the files over when they change.
```
git clone git@github.com:Seravo/wordpress.git wordpress
git clone git@github.com:Vincit/wordpress.git wordpress-dropin
cp wordpress-dropin/* wordpress/ # Run every time files change (or use a loop!)
```

You might notice that this does not copy vagrant-up-customizer.sh; I'm sure you can work around that if you have to.
