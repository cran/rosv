## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(rosv)

## ---- eval = FALSE------------------------------------------------------------
#  is_pkg_vulnerable(c('dask', 'dash'), ecosystem = c('PyPI', 'PyPI'))

## ---- echo = FALSE------------------------------------------------------------
c(dask = TRUE, dash = FALSE)

## ---- eval = FALSE------------------------------------------------------------
#  osv_count_vulns(c('dask', 'readxl', 'dplyr'), c('PyPI', 'CRAN', 'CRAN'))

## ---- echo = FALSE------------------------------------------------------------
c(dask = 1, readxl = 3, dplyr = 0)

## ---- eval = FALSE------------------------------------------------------------
#  pkg_vul <- osv_query('dask', ecosystem = 'PyPI', all_affected = FALSE)

## ---- eval = FALSE------------------------------------------------------------
#  pkg_tbl <- create_osv_list(pkg_vul, as.data.frame = TRUE)
#  head(pkg_tbl, 3)

## ---- echo = FALSE------------------------------------------------------------
data.frame(name = rep('dask', 3),
           versions = c('0.10.0', '0.10.1', '0.10.2'))

## ----example, eval = FALSE----------------------------------------------------
#  pkg_vul <- osv_query(ecosystem = 'PyPI', all_affected = FALSE)
#  pypi_vul <- create_osv_list(pkg_vul, as.data.frame = FALSE, NA_value = ' ')
#  head(pypi_vul, 3)

## ---- echo = FALSE------------------------------------------------------------
c("aaiohttp\t ", "accesscontrol\t2.13.0", "accesscontrol\t2.13.1")

## ---- eval = FALSE------------------------------------------------------------
#  osv_scan('r_project')

## ---- echo = FALSE------------------------------------------------------------
data.frame(name = c('commonmark', 'jsonlite', 'askpass', 'base'),
           version = c( '1.9.0', '1.8.7', '1.2.0', '4.3.1'),
           ecosystem = rep('CRAN', 4), 
           is_vul = c(TRUE, TRUE, FALSE , FALSE))

## ---- eval = FALSE------------------------------------------------------------
#  # Returns entire response object to parse as you please.
#  osv_query_1('dask', ecosystem = 'PyPI')
#  
#  # Returns the vulnerability IDs for packages in list
#  osv_querybatch('dask', ecosystem = 'PyPI')
#  
#  # Return vulnerabilities from different ecosystems as vectors
#  osv_querybatch(c('dask', 'readxl'), ecosystem = c('PyPI', 'CRAN'))
#  
#  # Grab details by vulns ID
#  osv_vulns('PYSEC-2021-387')
#  
#  # Download vulns for an ecosystem
#  osv_download('PYSEC-2021-387', 'PyPI')
#  osv_download(ecosystem = 'PyPI', download_only = TRUE)

## ---- eval = FALSE------------------------------------------------------------
#  # Query without caching
#  osv_query('dask', ecosystem = 'PyPI', cache = FALSE)
#  
#  # File will be saved to disk
#  osv_download('PYSEC-2021-387', 'PyPI')
#  
#  # Clear cache, as needed
#  clear_osv_cache()

## ---- eval = FALSE------------------------------------------------------------
#  # List of packages of interest
#  python_pkg <- c('dask', 'dash', 'keras')
#  
#  # Create the xref whitelist
#  xref_pkg_list <- create_xref_whitelist(python_pkg,
#                                         ecosystem = 'PyPI',
#                                         output_format = 'requirements.txt')
#  
#  # Output requirements.txt which can be used with PPM product
#  writeLines(xref_pkg_list, file.path(tempdir(), 'requirements.txt'))

