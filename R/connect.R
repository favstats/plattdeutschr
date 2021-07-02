#' get_plattdeutsch
#'
#' Translates German to Plattdeuts
#'
#'
#' @param txt provide a text you want to translate from German into Plattdeutsch (a maximum of 219 characters per call)
#' @param random provides a random text in Plattdeutsch
#' @export
get_plattdeutsch <- function(txt = "", random = F){

  if(stringr::str_count(txt)>219){
    stop("Your text should be shorter than 219 characters.")
  }

  html <- rvest::session("https://www.xn--versetter-z7a.de/")
  plattdeutschform <- rvest::html_form(html)[[1]]

  plattdeutschform_in <- rvest::html_form_set(plattdeutschform, q = txt)

  if(!random){
    resp <- rvest::html_form_submit(plattdeutschform_in, submit = 1)
  } else {
    resp <- rvest::html_form_submit(plattdeutschform_in, submit = 2)
  }


  fin <- rvest::read_html(resp) %>%
    rvest::html_nodes("blockquote") %>%
    rvest::html_text() %>%
    stringr::str_squish() %>%
    .[2]

  # fin <- twos[!twos==stringr::str_squish(txt)]

  return(fin)

}

