# GTA V SigScan Action

Github Action to compare a binary against GTA V sig database.

## Authors

### Sig Scan

👤 **yubie**

* Github: [@yubie-re](https://github.com/yubie-re)

👤 **brunph**

* Github: [@brunph](https://github.com/brunph)

### Action

👤 **Yimura**

* Github: [@Yimura](https://github.com/Yimura)

## Usage

```yml
name: ci

on:
  push:
    branches:
      - 'main'

jobs:
  docker:
    runs-on: ubuntu-latest
    steps:
      -- Download a binary

      -
        name: Setup GTA V Sig Scan
        uses: yimura/gtav-sigscan-action@v0.1
        with:
          - file: ./YimMenu.dll
```
