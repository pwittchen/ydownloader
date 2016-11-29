#!/usr/bin/env bash

set -e # automatically exit script on error

TEST_MODE=true
. ./ydownloader
echo "RUNNING UNIT TESTS..."

JSON_STUB_RESPONSE_WITH_URL_ENDPOINT='{
  "results": [
    {
      "uri": "https://artifactory-url.com/commerce-suite-sources.zip"
    },
    {
      "uri": "https://artifactory-url.com/commerce-suite.pom"
    },
    {
      "uri": "https://artifactory-url.com/commerce-suite.zip"
    }
  ]
}'

JSON_STUB_RESPONSE_WITH_DETAILS='{
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

testExtractZipValueFromJson() {
  # given
  RESPONSE_WITH_URL_ENDPOINT=$JSON_STUB_RESPONSE_WITH_URL_ENDPOINT
  expectedValue='https://artifactory-url.com/commerce-suite.zip'

  # when
  actualValue=$(echo $RESPONSE_WITH_URL_ENDPOINT | extractValueFromJson zip)

  # then
  assertEquals $expectedValue $actualValue
}

testGetDownloadUriFromResponse() {
  # given
  RESPONSE_URL_WITH_DETAILS=$JSON_STUB_RESPONSE_WITH_DETAILS
  expectedValue='https://artifactory-url.com/commerce-suite.zip'

  # when
  actualValue=$(getValueFromResponse downloadUri)

  # then
  assertEquals $expectedValue $actualValue
}

testGetReleaseTimeFromResponse() {
  # given
  RESPONSE_URL_WITH_DETAILS=$JSON_STUB_RESPONSE_WITH_DETAILS
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
