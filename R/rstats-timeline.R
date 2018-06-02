rstats_timeline <- function() {
  x <- rtweet::search_tweets("#rstats")
  x <- dplyr::arrange(x, dplyr::desc(created_at))
  y <- tweetview::as_tweet_thread(x)

  htmltools::html_print(
    htmltools::tags$html(
      htmltools::tags$head(
        htmltools::tags$style(
          dark
        )
      ),
      htmltools::tags$body(
        htmltools::tags$div(
          htmltools::HTML(paste0(y$thread_html, collapse="\n"))
        )
      )
    )
  )
}

