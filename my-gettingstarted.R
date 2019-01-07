# need to choose theme

library(blogdown)
new_site() # default theme is lithium
# need to stop serving so can use the console again
install_theme("gcushen/hugo-academic", theme_example = TRUE, update_config = TRUE)


## https://app.netlify.com/sites/andreaczhang/overview

rmarkdown::render_site(encoding = 'UTF-8')
serve_site()  ## this is very important to renew
hugo_build()
