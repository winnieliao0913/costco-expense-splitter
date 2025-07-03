costco <- function(total, w = NA, a = NA, j = NA, tax = 0) {
  people <- list(winnie = w, anna = a, joe = j)
  people <- people[!is.na(people)]  # remove anyone not involved
  
  n <- length(people)
  base_split <- (total - sum(unlist(people))) / n
  result <- list()
  
  for (name in names(people)) {
    partial <- people[[name]] + base_split
    tax_share <- (partial / total) * tax
    result[[name]] <- partial + tax_share
  }
  
  return(result)
}


