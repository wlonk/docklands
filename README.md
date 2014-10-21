Docklands
=========

This is a skeleton project for running a Django application in a thoroughly
dockerized environment. It contains a Postgres database, a Redis broker, a
Memcached caching layer, a webserver, a workerserver, and a task scheduler.

Requirements
------------

* Docker 1.3.0 or higher
* Fig 1.0.0 or higher
* Boot2docker 1.3.0 or higher if using OS X.

Installation
------------

```bash
git clone git@github.com:wlonk/docklands.git
cd docklands
fig build
fig up
```

Get the IP of your docker host (you can get this via `boot2docker ip` if you
are using OS X), and then go to `<that ip>:8000` in a browser to see that
everything started up correctly.

Running management commands
---------------------------

You can run one-off management commands as follows:

```bash
fig run web python docklands/manage.py syncdb  # Or whatever other command you wish.
```
