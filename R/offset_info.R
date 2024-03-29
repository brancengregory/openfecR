# OpenFEC
#
# This application programming interface (API) allows you to explore the way candidates and committees fund their campaigns.    The Federal Election Commission (FEC) API is a RESTful web service supporting full-text and field-specific searches on FEC data. [Bulk downloads](https://www.fec.gov/data/advanced/?tab=bulk-data) are available on the current site. Information is tied to the underlying forms by file ID and image ID. Data is updated nightly.    There are a lot of data, and a good place to start is to use search to find interesting candidates and committees. Then, you can use their IDs to find report or line item details with the other endpoints. If you are interested in individual donors, check out contributor information in the `/schedule_a/` endpoints.    <b class=\"body\" id=\"getting_started_head\">Getting started with the openFEC API</b><br>    If you would like to use the FEC's API programmatically, you can sign up for your own API key using our form. Alternatively, you can still try out our API without an API key by using the web interface and using DEMO_KEY. Note that when you use the openFEC API you are subject to the [Terms of Service](https://github.com/fecgov/FEC/blob/master/TERMS-OF-SERVICE.md) and [Acceptable Use policy](https://github.com/fecgov/FEC/blob/master/ACCEPTABLE-USE-POLICY.md).    Signing up for an API key will enable you to place up to 1,000 calls an hour. Each call is limited to 100 results per page. You can email questions, comments or a request to get a key for 7,200 calls an hour (120 calls per minute) to <a href=\"mailto:APIinfo@fec.gov\">APIinfo@fec.gov</a>. You can also ask questions and discuss the data in a community led [group](https://groups.google.com/forum/#!forum/fec-data).    The model definitions and schema are available at [/swagger](/swagger/). This is useful for making wrappers and exploring the data.    A few restrictions limit the way you can use FEC data. For example, you can’t use contributor lists for commercial purposes or to solicit donations. [Learn more here](https://www.fec.gov/updates/sale-or-use-contributor-information/).    [Inspect our source code](https://github.com/fecgov/openFEC). We welcome issues and pull requests!    <p><br></p> <h2 class=\"title\" id=\"signup_head\">Sign up for an API key</h2> <div id=\"apidatagov_signup\">Loading signup form...</div>
#
# The version of the OpenAPI document: 1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title OffsetInfo
#'
#' @description OffsetInfo Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field count  integer [optional]
#'
#' @field page  integer [optional]
#'
#' @field pages  integer [optional]
#'
#' @field per_page  integer [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OffsetInfo <- R6::R6Class(
  'OffsetInfo',
  public = list(
    `count` = NULL,
    `page` = NULL,
    `pages` = NULL,
    `per_page` = NULL,
    initialize = function(
        `count`=NULL, `page`=NULL, `pages`=NULL, `per_page`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`count`)) {
        stopifnot(is.numeric(`count`), length(`count`) == 1)
        self$`count` <- `count`
      }
      if (!is.null(`page`)) {
        stopifnot(is.numeric(`page`), length(`page`) == 1)
        self$`page` <- `page`
      }
      if (!is.null(`pages`)) {
        stopifnot(is.numeric(`pages`), length(`pages`) == 1)
        self$`pages` <- `pages`
      }
      if (!is.null(`per_page`)) {
        stopifnot(is.numeric(`per_page`), length(`per_page`) == 1)
        self$`per_page` <- `per_page`
      }
    },
    toJSON = function() {
      OffsetInfoObject <- list()
      if (!is.null(self$`count`)) {
        OffsetInfoObject[['count']] <-
          self$`count`
      }
      if (!is.null(self$`page`)) {
        OffsetInfoObject[['page']] <-
          self$`page`
      }
      if (!is.null(self$`pages`)) {
        OffsetInfoObject[['pages']] <-
          self$`pages`
      }
      if (!is.null(self$`per_page`)) {
        OffsetInfoObject[['per_page']] <-
          self$`per_page`
      }

      OffsetInfoObject
    },
    fromJSON = function(OffsetInfoJson) {
      OffsetInfoObject <- jsonlite::fromJSON(OffsetInfoJson)
      if (!is.null(OffsetInfoObject$`count`)) {
        self$`count` <- OffsetInfoObject$`count`
      }
      if (!is.null(OffsetInfoObject$`page`)) {
        self$`page` <- OffsetInfoObject$`page`
      }
      if (!is.null(OffsetInfoObject$`pages`)) {
        self$`pages` <- OffsetInfoObject$`pages`
      }
      if (!is.null(OffsetInfoObject$`per_page`)) {
        self$`per_page` <- OffsetInfoObject$`per_page`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`count`)) {
        sprintf(
        '"count":
          %d
                ',
        self$`count`
        )},
        if (!is.null(self$`page`)) {
        sprintf(
        '"page":
          %d
                ',
        self$`page`
        )},
        if (!is.null(self$`pages`)) {
        sprintf(
        '"pages":
          %d
                ',
        self$`pages`
        )},
        if (!is.null(self$`per_page`)) {
        sprintf(
        '"per_page":
          %d
                ',
        self$`per_page`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(OffsetInfoJson) {
      OffsetInfoObject <- jsonlite::fromJSON(OffsetInfoJson)
      self$`count` <- OffsetInfoObject$`count`
      self$`page` <- OffsetInfoObject$`page`
      self$`pages` <- OffsetInfoObject$`pages`
      self$`per_page` <- OffsetInfoObject$`per_page`
      self
    }
  )
)
