local({
  # fall back on '/' if baseurl is not specified
  baseurl = servr:::jekyll_config('.', 'baseurl', '/')
  knitr::opts_knit$set(base.url = baseurl)
  # fall back on 'kramdown' if markdown engine is not specified
  markdown = servr:::jekyll_config('.', 'markdown', 'kramdown')
  # see if we need to use the Jekyll render in knitr
  if (markdown == 'kramdown') {
    knitr::render_jekyll()
  } else knitr::render_markdown()

  # input/output filenames are passed as two additional arguments to Rscript
  a = commandArgs(TRUE)
  d = gsub('^_|[.][a-zA-Z]+$', '', basename(a[1]))
  knitr::opts_chunk$set(
    fig.path   = sprintf('figure/%s/', d),
    cache.path = sprintf('cache/%s/', d)
  )
  # post-process plot output to the tufte specific liquid tags
  knitr::knit_hooks$set(plot = function(x, options) {
    cap <- if (is.null(options$fig.cap)) "" else options$fig.cap
    # assume maincolumn by default
    if (is.null(options$fig.maincolumn)) options$fig.maincolumn <- TRUE
    if (isTRUE(options$fig.margin)) {
      sprintf("<span class='marginnote'><img class='fullwidth' src='%s/%s'/>%s</span>", baseurl, x, cap)
    } else if (isTRUE(options$fig.fullwidth)) {
      sprintf("<div><img class='fullwidth' src='%s/%s'/></div><p><span class='marginnote'>%s</span></p>", baseurl, x, cap)
    } else if (isTRUE(options$fig.maincolumn)) {
      sprintf("<span class='marginnote'>%s</span><img class='fullwidth' src='%s/%s'/>", cap, baseurl, x)
    } else {
      knitr::hook_plot_html(x, options)
    }
  })
  knitr::opts_knit$set(width = 70)
  knitr::knit(a[1], a[2], quiet = TRUE, encoding = 'UTF-8', envir = .GlobalEnv)
})
