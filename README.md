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
