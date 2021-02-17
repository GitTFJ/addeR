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
    message(paste("Select the python path. One possible locations is:", system("where python")))
    tmp = system("where python")
    reticulate::use_python(file.choose())
  } else {
    message(paste("Select the python path. One possible locations is:", system("where python3")))
    tmp = system("which python3")
    reticulate::use_python(file.choose())
  }
}

