# ydownloader
Shell script for downloading SAP Hybris Commerce Suite

Overview
--------

```
ydownloader is a script responsible
for downloading SAP Hybris Commerce Suite from Artifactory
and showing its download URL

Usage:
  -d    downloading Commerce Suite
  -u    showing Commerce Suite Download Url
  -h    showing help
```

Usage
-----

To show download URL, type:

```shell
./ydownloader -u
```

To download Commerce Suite, type:

```shell
./ydownloader -d
```

To configure downloader, edit `ydownloader.conf` file and set appropriate version (`latest` or concrete - e.g. `6.2`) and artifact type (`release` or `snapshot`). Default configuration looks as follows:

```
COMMERCE_SUITE_VERSION=latest
ARTIFACT_TYPE=release
```

To show help, type:

```
./ydownloader -h
```
