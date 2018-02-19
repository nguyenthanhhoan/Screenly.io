## Screenly Website

This is the static HTML website for Screenly OSE and Screenly Pro.

http://www.screenly.io

## Installation notes for OS X

* Install [Docker](https://www.docker.com/) and Docker Compose


### Troubleshooting

If you're having issues with dependencies, try the following:

```
$ docker-compose build
# delete everything inside folder `_site`
# delete folder `.asset-cache`
$ docker-compose up
```

## How to Make Site Changes

### Run Jekyll

```
$ docker-compose up
```

#### Open a browser window.

Just point your browser to [http://127.0.0.1:8080/](http://127.0.0.1:8080/) to view site.

Now you can simply edit the markdown, CSS, JavaScript and so on which makes up the site. Jekyll will automatically compile it.

### How to Deploy

```
$ ./bin/deploy.sh
```

## Mirrors

* The site can either run on Digital Ocean (us.hosting.wireload.net) or City Cloud (se2.hosting.wireload.net).
* For emergency/backup hosting on S3, the `www` CNAME must be update to **www.screenly.io.s3-website-us-east-1.amazonaws.com**.
