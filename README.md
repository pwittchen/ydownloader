# ydownloader [![Build Status](https://travis-ci.org/pwittchen/ydownloader.svg?branch=master)](https://travis-ci.org/pwittchen/ydownloader)
shell script for downloading SAP Hybris Commerce Suite from Artifactory

gets your version of the suite within a single command (on Linux and macOS)

- **note #1**: it's not official company project!
- **note #2**: you need to have an account in Hybris Artifactory to use it!

Contents
--------
- [Usage](#usage)
- [Installation and update](#installation-and-update)
- [Tests](#tests)

Usage
--------

Just run script as follows:

```shell
./ydownloader
```

You can use the following parameters:

```
  ydownloader is a script responsible
  for downloading SAP Hybris Commerce Suite from Artifactory

  Usage:
    -d    downloading Commerce Suite
    -u    showing Commerce Suite Download Url
    -t    showing Commerce Suite Release Time
    -s    saving username and password
    -c    clearing username and password
    -h    showing help
```

Installation and update
-----------------------

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
