# clean numbers with U.S. notation

numclean_us <- function(x){
  x %>% stringr::str_replace(., "[$|%]","") %>%
    stringr::str_replace(., "k", "000") %>%
    stringr::str_replace(., "n/a", NA_character_) %>%
    stringr::str_replace(., "#N/A", NA_character_) %>%
    stringr::str_replace_all(., ",", "") %>%
    stringr::str_replace_all(., "\\)", "") %>%
    stringr::str_replace_all(., "\\(", "-") %>%
    as.numeric()
}
