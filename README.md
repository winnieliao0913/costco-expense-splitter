# costco-expense-splitter
An R function to split Costco bills fairly among multiple people, taking into account:
- partial prepayments (e.g., if someone paid upfront)
- proportional tax sharing

## Example

```r
source("costco_split.R")
costco(total = 150, w = 20, a = 30, tax = 10)
