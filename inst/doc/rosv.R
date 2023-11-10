## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(rosv)

## ---- eval = FALSE------------------------------------------------------------
#  is_pkg_vulnerable(c('dask', 'dash'), ecosystem = c('PyPI', 'PyPI'))

## ---- eval = FALSE------------------------------------------------------------
#  # Query one package in PyPI for vulnerabilities
#  pkg_vul <- osv_query('dask', ecosystem = 'PyPI')
#  create_osv_list(pkg_vul)

## ----example, eval = FALSE----------------------------------------------------
#  # Pull the entire set of PyPI vulnerability data
#  pypi_vul <- create_osv_list(ecosystem = 'PyPI')
#  pypi_vul

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

## ---- eval = FALSE------------------------------------------------------------
#  # Query without caching
#  osv_query('dask', ecosystem = 'PyPI', cache = FALSE)
#  
#  # Clear cache, as needed
#  clear_osv_cache()

## ---- eval = FALSE------------------------------------------------------------
#  # List of packages of interest
#  python_pkg <- c('dask', 'tensorflow', 'keras')
#  
#  # Create the xref whitelist
#  pypi_vul <- create_osv_list(as.data.frame = TRUE)
#  xref_pkg_list <- create_ppm_xref_whitelist(python_pkg, pypi_vul)
#  
#  # Output requirements.txt which can be used with PPM product
#  writeLines(xref_pkg_list, file.path(tempdir(), 'requirements.txt'))

