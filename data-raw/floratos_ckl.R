## code to prepare `floratos_ckl` dataset goes here
library(checkRlistit)
library(dplyr)
library(stringr)


ns_astatus <- function(status_data) {
  ### extracts alien status from status data
  ### if each item of status data contains more than 1 word
  ### then it pastes words from 2 to last and returns it
  status_split <- str_split(status_data, " ")
  r <- sapply(status_split, function(x) {
    if(length(x) > 1) return(paste(x[2:length(x)],sep = " ", collapse = " ")) else return('')
  })
}

ns_split_status <- function(status_data) {
  ### status_data is a tibble with one column.
  ### This function counts the number of words in each row of status_data,
  ### puts them in a vector and returns it
  status_split <- str_split(status_data, " ")
  return(sapply(status_split, function(x) {length(x)}))
}

floratos_ckl <- filter(ckl_data,TOS > '') %>%
  select(codice_unico, famiglia_checklist, END, C, ESO, CULTON_FERAL, T, entita, TOS, Note, lista_rossa) %>%
  mutate(nof_words = ns_split_status(TOS), p_status = stringr::word(TOS), a_status = ns_astatus(TOS)) %>%
  mutate(p_status = sub(pattern = "^\\(([A-Z]{1,2})\\)$",replacement = "\\1", x = p_status)) %>%
  mutate(p_status = sub(pattern = "^\\(([A-Z]{1,2})\\)*$",replacement = "\\1", x = p_status)) %>%
  mutate(a_status = sub(pattern = "([A-Z])\\)$",replacement = "\\1", x = a_status)) %>%
  mutate(a_status = sub(pattern = "A TOS", replacement = "A", x = a_status)) %>%
  mutate(a_status = replace(a_status, a_status == "", "native")) %>%
  select(codice_unico,famiglia_checklist,END,C,ESO,entita,lista_rossa,p_status,a_status)



usethis::use_data(floratos_ckl, overwrite = TRUE)
