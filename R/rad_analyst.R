# OpenFEC
#
# This application programming interface (API) allows you to explore the way candidates and committees fund their campaigns.    The Federal Election Commission (FEC) API is a RESTful web service supporting full-text and field-specific searches on FEC data. [Bulk downloads](https://www.fec.gov/data/advanced/?tab=bulk-data) are available on the current site. Information is tied to the underlying forms by file ID and image ID. Data is updated nightly.    There are a lot of data, and a good place to start is to use search to find interesting candidates and committees. Then, you can use their IDs to find report or line item details with the other endpoints. If you are interested in individual donors, check out contributor information in the `/schedule_a/` endpoints.    <b class=\"body\" id=\"getting_started_head\">Getting started with the openFEC API</b><br>    If you would like to use the FEC's API programmatically, you can sign up for your own API key using our form. Alternatively, you can still try out our API without an API key by using the web interface and using DEMO_KEY. Note that when you use the openFEC API you are subject to the [Terms of Service](https://github.com/fecgov/FEC/blob/master/TERMS-OF-SERVICE.md) and [Acceptable Use policy](https://github.com/fecgov/FEC/blob/master/ACCEPTABLE-USE-POLICY.md).    Signing up for an API key will enable you to place up to 1,000 calls an hour. Each call is limited to 100 results per page. You can email questions, comments or a request to get a key for 7,200 calls an hour (120 calls per minute) to <a href=\"mailto:APIinfo@fec.gov\">APIinfo@fec.gov</a>. You can also ask questions and discuss the data in a community led [group](https://groups.google.com/forum/#!forum/fec-data).    The model definitions and schema are available at [/swagger](/swagger/). This is useful for making wrappers and exploring the data.    A few restrictions limit the way you can use FEC data. For example, you can’t use contributor lists for commercial purposes or to solicit donations. [Learn more here](https://www.fec.gov/updates/sale-or-use-contributor-information/).    [Inspect our source code](https://github.com/fecgov/openFEC). We welcome issues and pull requests!    <p><br></p> <h2 class=\"title\" id=\"signup_head\">Sign up for an API key</h2> <div id=\"apidatagov_signup\">Loading signup form...</div>
#
# The version of the OpenAPI document: 1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title RadAnalyst
#'
#' @description RadAnalyst Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field analyst_id  numeric [optional]
#'
#' @field analyst_short_id  numeric [optional]
#'
#' @field assignment_update_date  character [optional]
#'
#' @field committee_id  character 
#'
#' @field committee_name  character [optional]
#'
#' @field email  character [optional]
#'
#' @field first_name  character [optional]
#'
#' @field last_name  character [optional]
#'
#' @field rad_branch  character [optional]
#'
#' @field telephone_ext  numeric [optional]
#'
#' @field title  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RadAnalyst <- R6::R6Class(
  'RadAnalyst',
  public = list(
    `analyst_id` = NULL,
    `analyst_short_id` = NULL,
    `assignment_update_date` = NULL,
    `committee_id` = NULL,
    `committee_name` = NULL,
    `email` = NULL,
    `first_name` = NULL,
    `last_name` = NULL,
    `rad_branch` = NULL,
    `telephone_ext` = NULL,
    `title` = NULL,
    initialize = function(
        `committee_id`, `analyst_id`=NULL, `analyst_short_id`=NULL, `assignment_update_date`=NULL, `committee_name`=NULL, `email`=NULL, `first_name`=NULL, `last_name`=NULL, `rad_branch`=NULL, `telephone_ext`=NULL, `title`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`committee_id`)) {
        stopifnot(is.character(`committee_id`), length(`committee_id`) == 1)
        self$`committee_id` <- `committee_id`
      }
      if (!is.null(`analyst_id`)) {
        self$`analyst_id` <- `analyst_id`
      }
      if (!is.null(`analyst_short_id`)) {
        self$`analyst_short_id` <- `analyst_short_id`
      }
      if (!is.null(`assignment_update_date`)) {
        stopifnot(is.character(`assignment_update_date`), length(`assignment_update_date`) == 1)
        self$`assignment_update_date` <- `assignment_update_date`
      }
      if (!is.null(`committee_name`)) {
        stopifnot(is.character(`committee_name`), length(`committee_name`) == 1)
        self$`committee_name` <- `committee_name`
      }
      if (!is.null(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!is.null(`first_name`)) {
        stopifnot(is.character(`first_name`), length(`first_name`) == 1)
        self$`first_name` <- `first_name`
      }
      if (!is.null(`last_name`)) {
        stopifnot(is.character(`last_name`), length(`last_name`) == 1)
        self$`last_name` <- `last_name`
      }
      if (!is.null(`rad_branch`)) {
        stopifnot(is.character(`rad_branch`), length(`rad_branch`) == 1)
        self$`rad_branch` <- `rad_branch`
      }
      if (!is.null(`telephone_ext`)) {
        self$`telephone_ext` <- `telephone_ext`
      }
      if (!is.null(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
    },
    toJSON = function() {
      RadAnalystObject <- list()
      if (!is.null(self$`analyst_id`)) {
        RadAnalystObject[['analyst_id']] <-
          self$`analyst_id`
      }
      if (!is.null(self$`analyst_short_id`)) {
        RadAnalystObject[['analyst_short_id']] <-
          self$`analyst_short_id`
      }
      if (!is.null(self$`assignment_update_date`)) {
        RadAnalystObject[['assignment_update_date']] <-
          self$`assignment_update_date`
      }
      if (!is.null(self$`committee_id`)) {
        RadAnalystObject[['committee_id']] <-
          self$`committee_id`
      }
      if (!is.null(self$`committee_name`)) {
        RadAnalystObject[['committee_name']] <-
          self$`committee_name`
      }
      if (!is.null(self$`email`)) {
        RadAnalystObject[['email']] <-
          self$`email`
      }
      if (!is.null(self$`first_name`)) {
        RadAnalystObject[['first_name']] <-
          self$`first_name`
      }
      if (!is.null(self$`last_name`)) {
        RadAnalystObject[['last_name']] <-
          self$`last_name`
      }
      if (!is.null(self$`rad_branch`)) {
        RadAnalystObject[['rad_branch']] <-
          self$`rad_branch`
      }
      if (!is.null(self$`telephone_ext`)) {
        RadAnalystObject[['telephone_ext']] <-
          self$`telephone_ext`
      }
      if (!is.null(self$`title`)) {
        RadAnalystObject[['title']] <-
          self$`title`
      }

      RadAnalystObject
    },
    fromJSON = function(RadAnalystJson) {
      RadAnalystObject <- jsonlite::fromJSON(RadAnalystJson)
      if (!is.null(RadAnalystObject$`analyst_id`)) {
        self$`analyst_id` <- RadAnalystObject$`analyst_id`
      }
      if (!is.null(RadAnalystObject$`analyst_short_id`)) {
        self$`analyst_short_id` <- RadAnalystObject$`analyst_short_id`
      }
      if (!is.null(RadAnalystObject$`assignment_update_date`)) {
        self$`assignment_update_date` <- RadAnalystObject$`assignment_update_date`
      }
      if (!is.null(RadAnalystObject$`committee_id`)) {
        self$`committee_id` <- RadAnalystObject$`committee_id`
      }
      if (!is.null(RadAnalystObject$`committee_name`)) {
        self$`committee_name` <- RadAnalystObject$`committee_name`
      }
      if (!is.null(RadAnalystObject$`email`)) {
        self$`email` <- RadAnalystObject$`email`
      }
      if (!is.null(RadAnalystObject$`first_name`)) {
        self$`first_name` <- RadAnalystObject$`first_name`
      }
      if (!is.null(RadAnalystObject$`last_name`)) {
        self$`last_name` <- RadAnalystObject$`last_name`
      }
      if (!is.null(RadAnalystObject$`rad_branch`)) {
        self$`rad_branch` <- RadAnalystObject$`rad_branch`
      }
      if (!is.null(RadAnalystObject$`telephone_ext`)) {
        self$`telephone_ext` <- RadAnalystObject$`telephone_ext`
      }
      if (!is.null(RadAnalystObject$`title`)) {
        self$`title` <- RadAnalystObject$`title`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`analyst_id`)) {
        sprintf(
        '"analyst_id":
          %d
                ',
        self$`analyst_id`
        )},
        if (!is.null(self$`analyst_short_id`)) {
        sprintf(
        '"analyst_short_id":
          %d
                ',
        self$`analyst_short_id`
        )},
        if (!is.null(self$`assignment_update_date`)) {
        sprintf(
        '"assignment_update_date":
          "%s"
                ',
        self$`assignment_update_date`
        )},
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
        if (!is.null(self$`email`)) {
        sprintf(
        '"email":
          "%s"
                ',
        self$`email`
        )},
        if (!is.null(self$`first_name`)) {
        sprintf(
        '"first_name":
          "%s"
                ',
        self$`first_name`
        )},
        if (!is.null(self$`last_name`)) {
        sprintf(
        '"last_name":
          "%s"
                ',
        self$`last_name`
        )},
        if (!is.null(self$`rad_branch`)) {
        sprintf(
        '"rad_branch":
          "%s"
                ',
        self$`rad_branch`
        )},
        if (!is.null(self$`telephone_ext`)) {
        sprintf(
        '"telephone_ext":
          %d
                ',
        self$`telephone_ext`
        )},
        if (!is.null(self$`title`)) {
        sprintf(
        '"title":
          "%s"
                ',
        self$`title`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(RadAnalystJson) {
      RadAnalystObject <- jsonlite::fromJSON(RadAnalystJson)
      self$`analyst_id` <- RadAnalystObject$`analyst_id`
      self$`analyst_short_id` <- RadAnalystObject$`analyst_short_id`
      self$`assignment_update_date` <- RadAnalystObject$`assignment_update_date`
      self$`committee_id` <- RadAnalystObject$`committee_id`
      self$`committee_name` <- RadAnalystObject$`committee_name`
      self$`email` <- RadAnalystObject$`email`
      self$`first_name` <- RadAnalystObject$`first_name`
      self$`last_name` <- RadAnalystObject$`last_name`
      self$`rad_branch` <- RadAnalystObject$`rad_branch`
      self$`telephone_ext` <- RadAnalystObject$`telephone_ext`
      self$`title` <- RadAnalystObject$`title`
      self
    }
  )
)
