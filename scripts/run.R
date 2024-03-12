preview_chapter('0100-intro.Rmd')


#################################################################################################
##go to the index.Rmd and change gitbook_on <- TRUE
#################################################################################################

rmarkdown::render_site(output_format = 'bookdown::gitbook',
                       encoding = 'UTF-8')

#################################################################################################
##go to the index.Rmd and change gitbook_on <- FALSE
#################################################################################################
##move the phase 1 appendix out of the main directory to a backup file or else the file is too big


# define the _bookfile_name from _bookdown.yml
filename_html <- 'wildfire_recovery_playbook_review_2024'


##   then make our printable pdf
rmarkdown::render_site(output_format = 'pagedown::html_paged',
                       encoding = 'UTF-8')

# print to pdf
pagedown::chrome_print(
  paste0(getwd(), '/', filename_html, '.html'),
  output = paste0(getwd(),'/docs/', filename_html, '.pdf'),
  timeout = 180
)


