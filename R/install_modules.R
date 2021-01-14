#' Downloads and install modules for python
#'
#' Runs command line installation of python modules and can select whether to upgrade the python module manager 'pip'.
#'
#' @param modules Specify a character vector of all python modules to install
#' @param upgrade_pip Specify whether to upgrade the module manager before install i.e. to get the most updated versions for your python version
#' @return Installed python modules
#'
#'
#'
#' @examples
#' install_modules(modules = c("keras", "tensorflow", "scikit-learn==0.19.1"))
#' install_modules(modules = c("keras", "tensorflow", "scikit-learn==0.19.1"), upgrade_pip = F)
#' @export


install_modules = function(modules, upgrade_pip = T){
  if(upgrade_pip == T){
    shell("python -m pip install --upgrade pip")
  } else {
  }
  if(length(modules) == 0){
    warning("No python modules have been specified")
  } else {
    for(a in modules){
      shell(paste0("python -m pip install ",a))
    }
  }
}



