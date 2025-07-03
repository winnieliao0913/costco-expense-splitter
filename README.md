# costco-expense-splitter

An R function to calculate how much each person owes on a shared Costco bill, taking into account:

- individual spending (e.g., certain items bought by specific people)
- proportional tax sharing based on each person's subtotal

## Example

```r
source("costco_split.R")
costco(total = 150, w = 20, a = 30, tax = 10)
