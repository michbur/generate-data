set.seed(15390)

generate_df <- function(n_row) {
  n_class <- round(n_row/5, 0)
  class_names <- sapply(1L:n_class, function(i)
    paste0(sample(c(letters, LETTERS), size = rpois(1, 3.5) + 1, replace = TRUE), collapse = ""))
  data.frame(x = runif(n = n_row, min = -10, max = 100),
             y = runif(n = n_row, min = -10, max = 100),
             data_class = sample(class_names, n_row, replace = TRUE)) 
}

write.csv(generate_df(20), file = "data1.csv", row.names = FALSE)
write.csv(generate_df(223), file = "data2.csv", row.names = FALSE)
write.csv(generate_df(711), file = "data3.csv", row.names = FALSE)
