border <- "0px"
img <- "block"


gsub("YYY", img, gsub("XXX", border, "
.tweet-wrap { width: 564px; vertical-align: top; border: 1px solid #b2b2b2 !important; padding: 6pt; border-radius: 5px !important; background-color: rgb(27, 40, 54); margin-bottom: 4pt; }
div.tweet-avatar-img-crop { width: 48px; height: 48px; position: relative; overflow: hidden; border-radius: 50% !important; }
td.tweet-avatar { padding-top: 16px }
.tweet-div { font-family: 'Helvetica Neue', sans-serif; font-weight: 300; font-size: 1em; line-height: 1.3em; border: %s; border-radius: 5px; width: 494px; display: block; padding: 12px 6px 12px 6px; margin-bottom: 4pt; color:white; background-color: rgb(27, 40, 54) }
a.tweet-lnk { font-size: 0.85em; line-height: 1.3em; text-decoration: none; color:rgb(29, 161, 242) }
img.tweet-img { display: YYY; max-width:100%;border: 0.25px dotted black; margin-top:12px; }
span.tweet-hashtag { color:rgb(29, 161, 242) }
div.tweet-intro { margin-bottom:6px }
span.tweet-mention { color:rgb(29, 161, 242) }
span.tweet-source { font-size: 1.1em; font-weight: 700 }
span.tweet-ts { font-size: 0.75em; line-height: 1.3em; color=#2b2b2b }
")) -> dark
