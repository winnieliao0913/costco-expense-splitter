# # define function - for three people
# 
# calculate_owes_three <- function(all, w, a, j, tax) {
#   owe_anna <- a + (all - a - w - j) / 3 + ((a + (all - a - w - j) / 3) / all) * tax
#   owe_joe <- j + (all - j - w - a) / 3 + ((j + (all - j - w - a) / 3) / all) * tax
#   owe_winnie <- w + (all - w - j - a) / 3 + ((w + (all - w - j - a) / 3) / all) * tax
# 
#   return(list(
#     owe_anna = owe_anna,
#     owe_joe = owe_joe,
#     owe_winnie = owe_winnie
#   ))
# }
# 
# # define function - for two people
# 
# calculate_owes_two <- function(all, w, a, tax) {
#   owe_anna <- a + (all - a - w) / 2 + ((a + (all - a - w) / 2) / all) * tax
#   owe_winnie <- w + (all - w - a) / 2 + ((w + (all - w - a) / 2) / all) * tax
# 
#   return(list(
#     owe_anna = owe_anna,
#     owe_winnie = owe_winnie
#   ))
# }
# # food - Anna pay
# food <- calculate_owes_two(all = 3.99 + 1.5, w = 1.5, a = 3.99, tax = 0.63)
# food
# 
# # 0622 - Anna pay
# june22 <- calculate_owes_two(all = 102.15, w = 0, a = 3.99+6.69+5.89*2/3+21.99*2/3+10.99+12.99*2/3, tax = 2.39)
# june22
# 
# # 0630 - Anna pay
# june30 <- calculate_owes_two(all = 144.81, w = 11.69+24.99+9.99, a = 0, tax = 3.37)
# print(june30)
# 
# # 0607 - Winnie pay
# june7 <- calculate_owes_two(all = 116.3, w = 7.39 + 6.97, a = 15.99, tax = 4.3)
# print(june7)
# 
# # final
# # winnie pay anna
# food$owe_winnie + june22$owe_winnie + june30$owe_winnie - june7$owe_anna

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




