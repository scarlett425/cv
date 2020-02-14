# Set working directory
setwd("C:\Users\Scarlett\Desktop\Professional\cv")

# Load packages
require(knitr)
require(markdown)

# Create .md, .html, and .pdf files
knit("resume.Rmd")
markdownToHTML('resume.md', 'resume.html', options=c("use_xhml"))
system("pandoc -s resume.html -o resume.pdf")
