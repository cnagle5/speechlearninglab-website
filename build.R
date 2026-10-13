# build.R
footer <- readLines("footer.html")

# Update "Last updated" date
footer <- sub(
  "Last updated: [A-Za-z]+ [0-9]{4}",
  paste("Last updated:", format(Sys.Date(), "%B %Y")),
  footer
)

# Keep the copyright year current
footer <- sub(
  "&copy; [0-9]{4}",
  paste("&copy;", format(Sys.Date(), "%Y")),
  footer
)

writeLines(footer, "footer.html")
rmarkdown::render_site()