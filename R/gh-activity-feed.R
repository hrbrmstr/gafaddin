gh_activity_feed <- function() {
  x <- gh::gh("/users/:user/received_events", user="hrbrmstr", .limit=50)

  tags$h3(
    style="font-family:'Fira Sans',sans-serif;font-weight:700",
    "GitHub Activity Feed",
    tags$div(
      style="font-family:'Fira Sans',sans-serif;font-weight:300;font-size:11pt",
      purrr::map(x, ~{
        tags$li(
          style="display:flex;justify-content:center;align-content:center;flex-direction:column;",
          tags$span(
            tags$strong(.x$actor$login),
            case_when(
              .x$type == "WatchEvent" ~ "starred",
              .x$type == "ForkEvent" ~ "forked",
              .x$type == "IssuesEvent" ~ "engaged in an issue with",
              .x$type == "IssueCommentEvent" ~ "commented on",
              .x$type == "CreateEvent" ~ "created",
              .x$type == "PushEvent" ~ "pushed to",
              .x$type == "MemberEvent" ~ "membership changed on",
              .x$type == "PullRequestEvent" ~ "created a pull request for",
              TRUE ~ .x$type
            ),
            tags$code(.x$repo$name, style="font-size:9pt"),
            sprintf(
              "(%s min ago)",
              round(
                as.numeric(
                  difftime(as.POSIXct(format(Sys.time(), tz="GMT")), anytime::anytime(.x$created_at)),
                  "mins"
                )
              )
            )
          )
        )
      })
    )
  ) %>%
    html_print()
}