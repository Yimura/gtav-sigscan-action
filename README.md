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

## Example Usage

```yml
name: Test Local Github Action

on:
  workflow_dispatch:

jobs:
  check_detections:
    runs-on: ubuntu-latest
    name: Check for detections in Binary
    outputs:
      is_detected: ${{ steps.detections.outputs.is_detected }}
      detected_string: ${{ steps.detections.outputs.detected_string }}
    steps:
      -
        name: Checkout
        uses: actions/checkout@v2
        
      -
        name: Test DLL for Detections
        id: detections
        uses: ./
        with:
          file: ./test/detected.dll

  notify_detection:
    runs-on: ubuntu-latest
    name: Notify of detections in Binary
    needs: check_detections
    if: ${{ needs.check_detections.outputs.is_detected == 'true' }}
    steps:
      -
        name: Test Action Outputs
        run: echo "${{ needs.check_detections.outputs.detected_string }}"

```
