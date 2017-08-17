# Vincit WordPress

Customizations and improvements for [Seravo/wordpress](https://github.com/Seravo/wordpress). Inspired by [kehittamo/kehittamo-seravo-addons](https://github.com/kehittamo/kehittamo-seravo-addons).

## Usage
Clone [Seravo/wordpress](https://github.com/Seravo/wordpress), change values in config-sample.yml, and save it as config.yml.

### Modify your composer.json
Add the following under extra:
```
"dropin-paths": {
  ".": ["type:wordpress-drop-in"]
}
```

### Add this package
Run `composer require vincit/wordpress`.

Delete composer.lock and run `vagrant up`.

