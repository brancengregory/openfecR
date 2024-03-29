# OpenFEC
#
# This application programming interface (API) allows you to explore the way candidates and committees fund their campaigns.    The Federal Election Commission (FEC) API is a RESTful web service supporting full-text and field-specific searches on FEC data. [Bulk downloads](https://www.fec.gov/data/advanced/?tab=bulk-data) are available on the current site. Information is tied to the underlying forms by file ID and image ID. Data is updated nightly.    There are a lot of data, and a good place to start is to use search to find interesting candidates and committees. Then, you can use their IDs to find report or line item details with the other endpoints. If you are interested in individual donors, check out contributor information in the `/schedule_a/` endpoints.    <b class=\"body\" id=\"getting_started_head\">Getting started with the openFEC API</b><br>    If you would like to use the FEC's API programmatically, you can sign up for your own API key using our form. Alternatively, you can still try out our API without an API key by using the web interface and using DEMO_KEY. Note that when you use the openFEC API you are subject to the [Terms of Service](https://github.com/fecgov/FEC/blob/master/TERMS-OF-SERVICE.md) and [Acceptable Use policy](https://github.com/fecgov/FEC/blob/master/ACCEPTABLE-USE-POLICY.md).    Signing up for an API key will enable you to place up to 1,000 calls an hour. Each call is limited to 100 results per page. You can email questions, comments or a request to get a key for 7,200 calls an hour (120 calls per minute) to <a href=\"mailto:APIinfo@fec.gov\">APIinfo@fec.gov</a>. You can also ask questions and discuss the data in a community led [group](https://groups.google.com/forum/#!forum/fec-data).    The model definitions and schema are available at [/swagger](/swagger/). This is useful for making wrappers and exploring the data.    A few restrictions limit the way you can use FEC data. For example, you can’t use contributor lists for commercial purposes or to solicit donations. [Learn more here](https://www.fec.gov/updates/sale-or-use-contributor-information/).    [Inspect our source code](https://github.com/fecgov/openFEC). We welcome issues and pull requests!    <p><br></p> <h2 class=\"title\" id=\"signup_head\">Sign up for an API key</h2> <div id=\"apidatagov_signup\">Loading signup form...</div>
#
# The version of the OpenAPI document: 1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title InlineResponseDefault1StatutoryCitations
#'
#' @description InlineResponseDefault1StatutoryCitations Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field section  character [optional]
#'
#' @field title  integer [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponseDefault1StatutoryCitations <- R6::R6Class(
  'InlineResponseDefault1StatutoryCitations',
  public = list(
    `section` = NULL,
    `title` = NULL,
    initialize = function(
        `section`=NULL, `title`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`section`)) {
        stopifnot(is.character(`section`), length(`section`) == 1)
        self$`section` <- `section`
      }
      if (!is.null(`title`)) {
        stopifnot(is.numeric(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
    },
    toJSON = function() {
      InlineResponseDefault1StatutoryCitationsObject <- list()
      if (!is.null(self$`section`)) {
        InlineResponseDefault1StatutoryCitationsObject[['section']] <-
          self$`section`
      }
      if (!is.null(self$`title`)) {
        InlineResponseDefault1StatutoryCitationsObject[['title']] <-
          self$`title`
      }

      InlineResponseDefault1StatutoryCitationsObject
    },
    fromJSON = function(InlineResponseDefault1StatutoryCitationsJson) {
      InlineResponseDefault1StatutoryCitationsObject <- jsonlite::fromJSON(InlineResponseDefault1StatutoryCitationsJson)
      if (!is.null(InlineResponseDefault1StatutoryCitationsObject$`section`)) {
        self$`section` <- InlineResponseDefault1StatutoryCitationsObject$`section`
      }
      if (!is.null(InlineResponseDefault1StatutoryCitationsObject$`title`)) {
        self$`title` <- InlineResponseDefault1StatutoryCitationsObject$`title`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`section`)) {
        sprintf(
        '"section":
          "%s"
                ',
        self$`section`
        )},
        if (!is.null(self$`title`)) {
        sprintf(
        '"title":
          %d
                ',
        self$`title`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(InlineResponseDefault1StatutoryCitationsJson) {
      InlineResponseDefault1StatutoryCitationsObject <- jsonlite::fromJSON(InlineResponseDefault1StatutoryCitationsJson)
      self$`section` <- InlineResponseDefault1StatutoryCitationsObject$`section`
      self$`title` <- InlineResponseDefault1StatutoryCitationsObject$`title`
      self
    }
  )
)
