# OpenFEC
#
# This application programming interface (API) allows you to explore the way candidates and committees fund their campaigns.    The Federal Election Commission (FEC) API is a RESTful web service supporting full-text and field-specific searches on FEC data. [Bulk downloads](https://www.fec.gov/data/advanced/?tab=bulk-data) are available on the current site. Information is tied to the underlying forms by file ID and image ID. Data is updated nightly.    There are a lot of data, and a good place to start is to use search to find interesting candidates and committees. Then, you can use their IDs to find report or line item details with the other endpoints. If you are interested in individual donors, check out contributor information in the `/schedule_a/` endpoints.    <b class=\"body\" id=\"getting_started_head\">Getting started with the openFEC API</b><br>    If you would like to use the FEC's API programmatically, you can sign up for your own API key using our form. Alternatively, you can still try out our API without an API key by using the web interface and using DEMO_KEY. Note that when you use the openFEC API you are subject to the [Terms of Service](https://github.com/fecgov/FEC/blob/master/TERMS-OF-SERVICE.md) and [Acceptable Use policy](https://github.com/fecgov/FEC/blob/master/ACCEPTABLE-USE-POLICY.md).    Signing up for an API key will enable you to place up to 1,000 calls an hour. Each call is limited to 100 results per page. You can email questions, comments or a request to get a key for 7,200 calls an hour (120 calls per minute) to <a href=\"mailto:APIinfo@fec.gov\">APIinfo@fec.gov</a>. You can also ask questions and discuss the data in a community led [group](https://groups.google.com/forum/#!forum/fec-data).    The model definitions and schema are available at [/swagger](/swagger/). This is useful for making wrappers and exploring the data.    A few restrictions limit the way you can use FEC data. For example, you can’t use contributor lists for commercial purposes or to solicit donations. [Learn more here](https://www.fec.gov/updates/sale-or-use-contributor-information/).    [Inspect our source code](https://github.com/fecgov/openFEC). We welcome issues and pull requests!    <p><br></p> <h2 class=\"title\" id=\"signup_head\">Sign up for an API key</h2> <div id=\"apidatagov_signup\">Loading signup form...</div>
#
# The version of the OpenAPI document: 1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ScheduleBByRecipientID
#'
#' @description ScheduleBByRecipientID Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field committee_id  character 
#'
#' @field committee_name  character [optional]
#'
#' @field count  integer [optional]
#'
#' @field cycle  integer 
#'
#' @field memo_count  integer [optional]
#'
#' @field memo_total  numeric [optional]
#'
#' @field recipient_id  character 
#'
#' @field recipient_name  character [optional]
#'
#' @field total  numeric [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScheduleBByRecipientID <- R6::R6Class(
  'ScheduleBByRecipientID',
  public = list(
    `committee_id` = NULL,
    `committee_name` = NULL,
    `count` = NULL,
    `cycle` = NULL,
    `memo_count` = NULL,
    `memo_total` = NULL,
    `recipient_id` = NULL,
    `recipient_name` = NULL,
    `total` = NULL,
    initialize = function(
        `committee_id`, `cycle`, `recipient_id`, `committee_name`=NULL, `count`=NULL, `memo_count`=NULL, `memo_total`=NULL, `recipient_name`=NULL, `total`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`committee_id`)) {
        stopifnot(is.character(`committee_id`), length(`committee_id`) == 1)
        self$`committee_id` <- `committee_id`
      }
      if (!missing(`cycle`)) {
        stopifnot(is.numeric(`cycle`), length(`cycle`) == 1)
        self$`cycle` <- `cycle`
      }
      if (!missing(`recipient_id`)) {
        stopifnot(is.character(`recipient_id`), length(`recipient_id`) == 1)
        self$`recipient_id` <- `recipient_id`
      }
      if (!is.null(`committee_name`)) {
        stopifnot(is.character(`committee_name`), length(`committee_name`) == 1)
        self$`committee_name` <- `committee_name`
      }
      if (!is.null(`count`)) {
        stopifnot(is.numeric(`count`), length(`count`) == 1)
        self$`count` <- `count`
      }
      if (!is.null(`memo_count`)) {
        stopifnot(is.numeric(`memo_count`), length(`memo_count`) == 1)
        self$`memo_count` <- `memo_count`
      }
      if (!is.null(`memo_total`)) {
        self$`memo_total` <- `memo_total`
      }
      if (!is.null(`recipient_name`)) {
        stopifnot(is.character(`recipient_name`), length(`recipient_name`) == 1)
        self$`recipient_name` <- `recipient_name`
      }
      if (!is.null(`total`)) {
        self$`total` <- `total`
      }
    },
    toJSON = function() {
      ScheduleBByRecipientIDObject <- list()
      if (!is.null(self$`committee_id`)) {
        ScheduleBByRecipientIDObject[['committee_id']] <-
          self$`committee_id`
      }
      if (!is.null(self$`committee_name`)) {
        ScheduleBByRecipientIDObject[['committee_name']] <-
          self$`committee_name`
      }
      if (!is.null(self$`count`)) {
        ScheduleBByRecipientIDObject[['count']] <-
          self$`count`
      }
      if (!is.null(self$`cycle`)) {
        ScheduleBByRecipientIDObject[['cycle']] <-
          self$`cycle`
      }
      if (!is.null(self$`memo_count`)) {
        ScheduleBByRecipientIDObject[['memo_count']] <-
          self$`memo_count`
      }
      if (!is.null(self$`memo_total`)) {
        ScheduleBByRecipientIDObject[['memo_total']] <-
          self$`memo_total`
      }
      if (!is.null(self$`recipient_id`)) {
        ScheduleBByRecipientIDObject[['recipient_id']] <-
          self$`recipient_id`
      }
      if (!is.null(self$`recipient_name`)) {
        ScheduleBByRecipientIDObject[['recipient_name']] <-
          self$`recipient_name`
      }
      if (!is.null(self$`total`)) {
        ScheduleBByRecipientIDObject[['total']] <-
          self$`total`
      }

      ScheduleBByRecipientIDObject
    },
    fromJSON = function(ScheduleBByRecipientIDJson) {
      ScheduleBByRecipientIDObject <- jsonlite::fromJSON(ScheduleBByRecipientIDJson)
      if (!is.null(ScheduleBByRecipientIDObject$`committee_id`)) {
        self$`committee_id` <- ScheduleBByRecipientIDObject$`committee_id`
      }
      if (!is.null(ScheduleBByRecipientIDObject$`committee_name`)) {
        self$`committee_name` <- ScheduleBByRecipientIDObject$`committee_name`
      }
      if (!is.null(ScheduleBByRecipientIDObject$`count`)) {
        self$`count` <- ScheduleBByRecipientIDObject$`count`
      }
      if (!is.null(ScheduleBByRecipientIDObject$`cycle`)) {
        self$`cycle` <- ScheduleBByRecipientIDObject$`cycle`
      }
      if (!is.null(ScheduleBByRecipientIDObject$`memo_count`)) {
        self$`memo_count` <- ScheduleBByRecipientIDObject$`memo_count`
      }
      if (!is.null(ScheduleBByRecipientIDObject$`memo_total`)) {
        self$`memo_total` <- ScheduleBByRecipientIDObject$`memo_total`
      }
      if (!is.null(ScheduleBByRecipientIDObject$`recipient_id`)) {
        self$`recipient_id` <- ScheduleBByRecipientIDObject$`recipient_id`
      }
      if (!is.null(ScheduleBByRecipientIDObject$`recipient_name`)) {
        self$`recipient_name` <- ScheduleBByRecipientIDObject$`recipient_name`
      }
      if (!is.null(ScheduleBByRecipientIDObject$`total`)) {
        self$`total` <- ScheduleBByRecipientIDObject$`total`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`committee_id`)) {
        sprintf(
        '"committee_id":
          "%s"
                ',
        self$`committee_id`
        )},
        if (!is.null(self$`committee_name`)) {
        sprintf(
        '"committee_name":
          "%s"
                ',
        self$`committee_name`
        )},
        if (!is.null(self$`count`)) {
        sprintf(
        '"count":
          %d
                ',
        self$`count`
        )},
        if (!is.null(self$`cycle`)) {
        sprintf(
        '"cycle":
          %d
                ',
        self$`cycle`
        )},
        if (!is.null(self$`memo_count`)) {
        sprintf(
        '"memo_count":
          %d
                ',
        self$`memo_count`
        )},
        if (!is.null(self$`memo_total`)) {
        sprintf(
        '"memo_total":
          %d
                ',
        self$`memo_total`
        )},
        if (!is.null(self$`recipient_id`)) {
        sprintf(
        '"recipient_id":
          "%s"
                ',
        self$`recipient_id`
        )},
        if (!is.null(self$`recipient_name`)) {
        sprintf(
        '"recipient_name":
          "%s"
                ',
        self$`recipient_name`
        )},
        if (!is.null(self$`total`)) {
        sprintf(
        '"total":
          %d
                ',
        self$`total`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ScheduleBByRecipientIDJson) {
      ScheduleBByRecipientIDObject <- jsonlite::fromJSON(ScheduleBByRecipientIDJson)
      self$`committee_id` <- ScheduleBByRecipientIDObject$`committee_id`
      self$`committee_name` <- ScheduleBByRecipientIDObject$`committee_name`
      self$`count` <- ScheduleBByRecipientIDObject$`count`
      self$`cycle` <- ScheduleBByRecipientIDObject$`cycle`
      self$`memo_count` <- ScheduleBByRecipientIDObject$`memo_count`
      self$`memo_total` <- ScheduleBByRecipientIDObject$`memo_total`
      self$`recipient_id` <- ScheduleBByRecipientIDObject$`recipient_id`
      self$`recipient_name` <- ScheduleBByRecipientIDObject$`recipient_name`
      self$`total` <- ScheduleBByRecipientIDObject$`total`
      self
    }
  )
)
