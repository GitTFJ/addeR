#' Links python to R
#'
#' To run python through R, its necassary ot link python to R. This can be done manually by opting to specify the python.exe file path, or you can allow the function search for a python.exe file.
#'
#' @param set_path Specify whether you want to manually link R and python. Binary: TRUE/FALSE
#' @return Linked python program
#'
#'
#'
#' @examples
#' link_python(set_path = T)
#' @export


link_python = function(set_path = T){
  if(set_path == T){
    message(paste0("Having opted to manually set the python path, locate the python.exe file on your PC. One possible location is: ", paste0("C:/Users/",Sys.getenv()['USERNAME'],"/AppData/Local/Programs/Python/Python36/python.exe")))
    reticulate::use_python(file.choose())
  } else if(dir.exists(paste0("C:/Users/",Sys.getenv()['USERNAME'],"/AppData/Local/Programs/Python/Python36"))) {
    reticulate::use_python(paste0("C:/Users/",Sys.getenv()['USERNAME'],"/AppData/Local/Programs/Python/Python36/python.exe"))
  } else {
    message("Your python file was not in the expected location so we will conduct a more comprehensive search. If you are prompted to install miniconda during this search, decline this prompt by typing'n'")
    reticulate::py_config()
  }
}
