#' Links python to R
#'
#' To run python through R, its necassary ot link python to R. link_python() recommends a potential python location and prompts the user to select it.
#'
#' @return Linked python program
#'
#' @examples
#' link_python()
#' @export


link_python = function(){
  if(grepl("indows",Sys.getenv()['OS'])){
    message("Select the python path. One possible locations is:
")
    tmp = system("where python")
    reticulate::use_python(file.choose())
  } else {
    message("Select the python path. One possible locations is:
")
    tmp = system("which python3")
    reticulate::use_python(file.choose())
  }
}
