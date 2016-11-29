#!/usr/bin/env bash

set -e # automatically exit script on error

TEST_MODE=true
. ./ydownloader
echo "RUNNING UNIT TESTS..."

JSON_RESPONSE_STUB='{
  "repo": "hybris-release",
  "path": "/path/to/commerce-suite.zip",
  "created": "2016-11-28T15:35:36.878+01:00",
  "createdBy": "hybris-maven-deploy",
  "lastModified": "2016-11-28T15:35:00.685+01:00",
  "modifiedBy": "hybris-maven-deploy",
  "lastUpdated": "2016-11-28T15:35:00.685+01:00",
  "downloadUri": "https://artifactory-url.com/commerce-suite.zip",
  "mimeType": "application/zip",
  "size": "2167501556",
  "checksums": {
    "sha1": "sampleSha",
    "md5": "sampleMd5"
  },
  "originalChecksums": {
    "sha1": "sampleSha",
    "md5": "sampleMd5"
  },
  "uri": "https://artifactory-url.com/commerce-suite.zip"
}'

testGetDownloadUriFromResponse() {
  # given
  RESPONSE_URL_WITH_DETAILS=$JSON_RESPONSE_STUB
  expectedValue='https://artifactory-url.com/commerce-suite.zip'

  # when
  actualValue=$(getValueFromResponse downloadUri)

  # then
  assertEquals $expectedValue $actualValue
}

testGetReleaseTimeFromResponse() {
  # given
  RESPONSE_URL_WITH_DETAILS=$JSON_RESPONSE_STUB
  expectedValue='2016-11-28T15:35:00.685+01:00'

  # when
  actualValue=$(getValueFromResponse lastUpdated)

  # then
  assertEquals $expectedValue $actualValue
}

testCutLastChars() {
  # given
  valueToCut='testString'
  expectedValue='testStri'

  # when
  actualValue=$(echo $valueToCut | cutLastChars 3)

  # then
  assertEquals $expectedValue $actualValue
}

. ./shunit2/shunit2 # load shunit2
