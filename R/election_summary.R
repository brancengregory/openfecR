# OpenFEC
#
# This application programming interface (API) allows you to explore the way candidates and committees fund their campaigns.    The Federal Election Commission (FEC) API is a RESTful web service supporting full-text and field-specific searches on FEC data. [Bulk downloads](https://www.fec.gov/data/advanced/?tab=bulk-data) are available on the current site. Information is tied to the underlying forms by file ID and image ID. Data is updated nightly.    There are a lot of data, and a good place to start is to use search to find interesting candidates and committees. Then, you can use their IDs to find report or line item details with the other endpoints. If you are interested in individual donors, check out contributor information in the `/schedule_a/` endpoints.    <b class=\"body\" id=\"getting_started_head\">Getting started with the openFEC API</b><br>    If you would like to use the FEC's API programmatically, you can sign up for your own API key using our form. Alternatively, you can still try out our API without an API key by using the web interface and using DEMO_KEY. Note that when you use the openFEC API you are subject to the [Terms of Service](https://github.com/fecgov/FEC/blob/master/TERMS-OF-SERVICE.md) and [Acceptable Use policy](https://github.com/fecgov/FEC/blob/master/ACCEPTABLE-USE-POLICY.md).    Signing up for an API key will enable you to place up to 1,000 calls an hour. Each call is limited to 100 results per page. You can email questions, comments or a request to get a key for 7,200 calls an hour (120 calls per minute) to <a href=\"mailto:APIinfo@fec.gov\">APIinfo@fec.gov</a>. You can also ask questions and discuss the data in a community led [group](https://groups.google.com/forum/#!forum/fec-data).    The model definitions and schema are available at [/swagger](/swagger/). This is useful for making wrappers and exploring the data.    A few restrictions limit the way you can use FEC data. For example, you can’t use contributor lists for commercial purposes or to solicit donations. [Learn more here](https://www.fec.gov/updates/sale-or-use-contributor-information/).    [Inspect our source code](https://github.com/fecgov/openFEC). We welcome issues and pull requests!    <p><br></p> <h2 class=\"title\" id=\"signup_head\">Sign up for an API key</h2> <div id=\"apidatagov_signup\">Loading signup form...</div>
#
# The version of the OpenAPI document: 1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ElectionSummary
#'
#' @description ElectionSummary Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field count  integer [optional]
#'
#' @field disbursements  numeric [optional]
#'
#' @field independent_expenditures  numeric [optional]
#'
#' @field receipts  numeric [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ElectionSummary <- R6::R6Class(
  'ElectionSummary',
  public = list(
    `count` = NULL,
    `disbursements` = NULL,
    `independent_expenditures` = NULL,
    `receipts` = NULL,
    initialize = function(
        `count`=NULL, `disbursements`=NULL, `independent_expenditures`=NULL, `receipts`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`count`)) {
        stopifnot(is.numeric(`count`), length(`count`) == 1)
        self$`count` <- `count`
      }
      if (!is.null(`disbursements`)) {
        self$`disbursements` <- `disbursements`
      }
      if (!is.null(`independent_expenditures`)) {
        self$`independent_expenditures` <- `independent_expenditures`
      }
      if (!is.null(`receipts`)) {
        self$`receipts` <- `receipts`
      }
    },
    toJSON = function() {
      ElectionSummaryObject <- list()
      if (!is.null(self$`count`)) {
        ElectionSummaryObject[['count']] <-
          self$`count`
      }
      if (!is.null(self$`disbursements`)) {
        ElectionSummaryObject[['disbursements']] <-
          self$`disbursements`
      }
      if (!is.null(self$`independent_expenditures`)) {
        ElectionSummaryObject[['independent_expenditures']] <-
          self$`independent_expenditures`
      }
      if (!is.null(self$`receipts`)) {
        ElectionSummaryObject[['receipts']] <-
          self$`receipts`
      }

      ElectionSummaryObject
    },
    fromJSON = function(ElectionSummaryJson) {
      ElectionSummaryObject <- jsonlite::fromJSON(ElectionSummaryJson)
      if (!is.null(ElectionSummaryObject$`count`)) {
        self$`count` <- ElectionSummaryObject$`count`
      }
      if (!is.null(ElectionSummaryObject$`disbursements`)) {
        self$`disbursements` <- ElectionSummaryObject$`disbursements`
      }
      if (!is.null(ElectionSummaryObject$`independent_expenditures`)) {
        self$`independent_expenditures` <- ElectionSummaryObject$`independent_expenditures`
      }
      if (!is.null(ElectionSummaryObject$`receipts`)) {
        self$`receipts` <- ElectionSummaryObject$`receipts`
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
        if (!is.null(self$`disbursements`)) {
        sprintf(
        '"disbursements":
          %d
                ',
        self$`disbursements`
        )},
        if (!is.null(self$`independent_expenditures`)) {
        sprintf(
        '"independent_expenditures":
          %d
                ',
        self$`independent_expenditures`
        )},
        if (!is.null(self$`receipts`)) {
        sprintf(
        '"receipts":
          %d
                ',
        self$`receipts`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ElectionSummaryJson) {
      ElectionSummaryObject <- jsonlite::fromJSON(ElectionSummaryJson)
      self$`count` <- ElectionSummaryObject$`count`
      self$`disbursements` <- ElectionSummaryObject$`disbursements`
      self$`independent_expenditures` <- ElectionSummaryObject$`independent_expenditures`
      self$`receipts` <- ElectionSummaryObject$`receipts`
      self
    }
  )
)
