#' Downloads and prepares the install of python
#'
#' This function downloads and prepares the install of python. Users can select the specific version of python, with the default set at 3.6.8 - a stable version to utilise python's machine learning languages. When prompted to install, you may be given the choice to add Python to the PATH. If you only plan to use one version of python, this would be adviseable. This function currently only works for recent version of Windows, Mac and Linux.
#'
#' For the python install to be recognised by R, its important to close and re-open R, which resets the PATH. As a result, we recommend saving scripts and important files before running this function. R will only close if confirmed by you (the user).
#'
#' @param version Specify a python version as a character string. Refer to "https://www.python.org/downloads/" to see available versions
#' @return An installed version of python
#'
#'
#'
#' @examples
#' py_download()
#' py_download(version = "3.9.0")
#' @export

#Prepare classification models
py_download = function(version = "3.6.8"){
  if(grepl("Windows",Sys.getenv()['OS'])){
    if("installr" %in% rownames(installed.packages()) == T){
    } else {
      install.packages("installr")
    }
    if(grepl("64", Sys.getenv()['R_ARCH'])){
      installr::install.URL(paste0("https://www.python.org/ftp/python/",version,"/python-",version,"-amd64.exe"))
    } else {
      installr::install.URL(paste0("https://www.python.org/ftp/python/",version,"/python-",version,".exe"))
    }
  } else if (grepl("apple",Sys.getenv()['R_PLATFORM'])){
    browseURL(paste0("https://www.python.org/ftp/python/",version,"/python-",version,"-macosx10.6.pkg"))
  } else {
    system("sudo apt-get install python3.6")
  }
   message("To recognise the python download, Rstudio needs to be closed
      and re-opened")
}

