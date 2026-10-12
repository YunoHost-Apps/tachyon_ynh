# Tachyon for YunoHost

[Tachyon](https://tachyonmail.app/) is a fast, secure, modern self-hosted webmail (a fork of SnappyMail) with mail, contacts and calendars. This package installs it on a [YunoHost](https://yunohost.org) server with SSO, a MariaDB database for contacts, and PHP-FPM + NGINX.

- Upstream: <https://github.com/kimusan/Tachyon>
- Packaging modelled on [snappymail_ynh](https://github.com/YunoHost-Apps/snappymail_ynh)

## Install

```
sudo yunohost app install https://github.com/<your-account>/tachyon_ynh
```

After installing, see `doc/POST_INSTALL.md` for admin UI setup (`/app/?admin`).

## Upgrade

```
sudo yunohost app upgrade tachyon -u https://github.com/<your-account>/tachyon_ynh
```

User data (`app/data/_data_`) is kept across upgrades.

## Updating to a new upstream release

Edit `[resources.sources.main]` in `manifest.toml` (url + sha256 of `tachyon-X.Y.Z.tar.gz`) and bump `version`.
