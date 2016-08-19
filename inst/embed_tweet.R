#' Title
#'
#' Description
#'
#' @return
#' @references
#' @keywords
#' @export
#' @seealso
#' @examples

### https://blog.twitter.com/2014/pro-tip-for-embedding-tweets-use-the-oembed-api-endpoint

## httr::GET this https://api.twitter.com/1.1/statuses/oembed.json?id={tweet_id}

##### returns below


{
  "cache_age":"3153600000",
  "url":"https:\/\/twitter.com\/TwitterDev\/statuses\/482281320232415232",
  "height":null,
  "provider_url":"https:\/\/twitter.com",
  "provider_name":"Twitter",
  "author_name":"TwitterDev",
  "version":"1.0",
  "author_url":"https:\/\/twitter.com\/TwitterDev",
  "type":"rich",
  "html":"\u003Cblockquote class=\"twitter-tweet\"\u003E\u003Cp\u003EWhy I joined Twitter - Andy Piper \u003Ca href=\"https:\/\/twitter.com\/andypiper\"\u003E@andypiper\u003C\/a\u003E, Developer Advocate \u003Ca href=\"https:\/\/t.co\/fQ796U9lq1\"\u003Ehttps:\/\/t.co\/fQ796U9lq1\u003C\/a\u003E\u003C\/p\u003E— TwitterDev (<a href="https://twitter.com/intent/user?screen_name=TwitterDev">@TwitterDev</a>) \u003Ca href=\"https:\/\/twitter.com\/TwitterDev\/statuses\/482281320232415232\"\u003EJune 26, 2014\u003C\/a\u003E\u003C\/blockquote\u003E\n\u003Cscript async src=\"\/\/platform.twitter.com\/widgets.js\" charset=\"utf-8\"\u003E\u003C\/script\u003E",
  "width":550
}

######### grab "html:"  as below

{HTML to be rendered}
<blockquote class="twitter-tweet"><p>Why I joined Twitter - Andy Piper <a href="https://twitter.com/andypiper"></a><a href="https://twitter.com/intent/user?screen_name=andypiper">@andypiper</a>, Developer Advocate <a href="https://t.co/fQ796U9lq1">https://t.co/fQ796U9lq1</a></p>— TwitterDev (<a href="https://twitter.com/intent/user?screen_name=TwitterDev">@TwitterDev</a>) <a href="https://twitter.com/TwitterDev/statuses/482281320232415232">June 26, 2014</a></blockquote>
{HTML to be rendered}
