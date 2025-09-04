count_uniques <- function(df){
  df_with_rownumbers <- df_add_rownumbers(df)

  unique_vals <- 0

  for (i in 1:ncol(df_with_rownumbers)) {
    no_uniques <- count_uniques_in_vector(df_with_rownumbers[, i])

    unique_vals <- unique_vals + no_uniques
  }

  unique_vals
}