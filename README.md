## Cortex Analyzer - Decrypt Windows Quarantined File
[![Docker Image CI](https://github.com/adammchugh/Cortex-Defender_Quarantine/actions/workflows/docker-image.yml/badge.svg)](https://github.com/adammchugh/Cortex-Defender_Quarantine/actions/workflows/docker-image.yml)
[![CodeQL](https://github.com/adammchugh/Cortex-Defender_Quarantine/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/adammchugh/Cortex-Defender_Quarantine/actions/workflows/codeql-analysis.yml)

### Usage

```console
$ pip install --user cortexutils==2.1.0

$ cat tests/input/input.json | jq
{
  "config": {
    "check_pap": true,
    "check_tlp": true,
    "delay": 1,
    "max_pap": 2,
    "max_tlp": 2
  },
  "dataType": "file",
  "file": "attachment1234123412341234123",
  "filename": "7BEBE68E570E8351D6CB28856613934A7FDD2510",
  "pap": 1,
  "tlp:": 1
}

$ python DefenderQuarantine.py tests

$ cat tests/output/output.json | jq
{
  "success": true,
  "summary": {
    "taxonomies": [
      {
        "level": "info",
        "namespace": "template",
        "predicate": "file",
        "value": "7BEBE68E570E8351D6CB28856613934A7FDD2510"
      }
    ]
  },
  "artifacts": [
    null
  ],
  "full": {
    "data": "7BEBE68E570E8351D6CB28856613934A7FDD2510",
    "input": {
      "config": {
        "check_pap": true,
        "check_tlp": true,
        "delay": 1,
        "max_pap": 2,
        "max_tlp": 2
      },
      "dataType": "file",
      "file": "attachment1234123412341234123",
      "filename": "7BEBE68E570E8351D6CB28856613934A7FDD2510",
      "pap": 1,
      "tlp:": 1
    }
  }
}
```