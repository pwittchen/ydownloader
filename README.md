# ydownloader
shell script for downloading SAP Hybris Commerce Suite

gets your version of the suite within a single command

Contents
--------
- [Overview](#overview)
- [Installation](#installation)
- [Usage](#usage)

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

Installation
------------

You can install script locally to access it system-wide.

with **wget**:
```
sh -c "$(wget https://raw.githubusercontent.com/pwittchen/ydownloader/master/install.sh -O -)"
```

with **curl**:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/pwittchen/ydownloader/master/install.sh)"

```

Usage
-----

- to show download URL, type: `./ydownloader -u`
- to download Commerce Suite, type: `./ydownloader -d`
- to show help, type: `./ydownloader -h`

**Hint**: Script will ask you for Commerce Suite version, artifact type (snapshot or release), username (e-mail) and password.
