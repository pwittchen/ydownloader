# ydownloader
shell script for downloading SAP Hybris Commerce Suite

gets your version of the suite within a single command

Contents
--------
- [Overview](#overview)
- [Installation](#installation)
- [Tests](#tests)

Overview
--------

```
  ydownloader is a script responsible
  for downloading SAP Hybris Commerce Suite from Artifactory

  Usage:
    -d    downloading Commerce Suite
    -u    showing Commerce Suite Download Url
    -t    showing Commerce Suite Release Time
    -h    showing help
```

Installation
------------

with **wget**:
```shell
sh -c "$(wget https://raw.githubusercontent.com/pwittchen/ydownloader/master/install.sh -O -)"
```

with **curl**:
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/pwittchen/ydownloader/master/install.sh)"
```

Tests
-----

Unit tests use [shunit2](https://github.com/kward/shunit2). In order to exectute them, run:

```shell
./test.sh
```
