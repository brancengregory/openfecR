# OpenFEC
#
# This application programming interface (API) allows you to explore the way candidates and committees fund their campaigns.    The Federal Election Commission (FEC) API is a RESTful web service supporting full-text and field-specific searches on FEC data. [Bulk downloads](https://www.fec.gov/data/advanced/?tab=bulk-data) are available on the current site. Information is tied to the underlying forms by file ID and image ID. Data is updated nightly.    There are a lot of data, and a good place to start is to use search to find interesting candidates and committees. Then, you can use their IDs to find report or line item details with the other endpoints. If you are interested in individual donors, check out contributor information in the `/schedule_a/` endpoints.    <b class=\"body\" id=\"getting_started_head\">Getting started with the openFEC API</b><br>    If you would like to use the FEC's API programmatically, you can sign up for your own API key using our form. Alternatively, you can still try out our API without an API key by using the web interface and using DEMO_KEY. Note that when you use the openFEC API you are subject to the [Terms of Service](https://github.com/fecgov/FEC/blob/master/TERMS-OF-SERVICE.md) and [Acceptable Use policy](https://github.com/fecgov/FEC/blob/master/ACCEPTABLE-USE-POLICY.md).    Signing up for an API key will enable you to place up to 1,000 calls an hour. Each call is limited to 100 results per page. You can email questions, comments or a request to get a key for 7,200 calls an hour (120 calls per minute) to <a href=\"mailto:APIinfo@fec.gov\">APIinfo@fec.gov</a>. You can also ask questions and discuss the data in a community led [group](https://groups.google.com/forum/#!forum/fec-data).    The model definitions and schema are available at [/swagger](/swagger/). This is useful for making wrappers and exploring the data.    A few restrictions limit the way you can use FEC data. For example, you can’t use contributor lists for commercial purposes or to solicit donations. [Learn more here](https://www.fec.gov/updates/sale-or-use-contributor-information/).    [Inspect our source code](https://github.com/fecgov/openFEC). We welcome issues and pull requests!    <p><br></p> <h2 class=\"title\" id=\"signup_head\">Sign up for an API key</h2> <div id=\"apidatagov_signup\">Loading signup form...</div>
#
# The version of the OpenAPI document: 1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title OperationsLog
#'
#' @description OperationsLog Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field amendment_indicator  character [optional]
#'
#' @field beginning_image_number  character [optional]
#'
#' @field candidate_committee_id  character [optional]
#'
#' @field coverage_end_date  character [optional]
#'
#' @field coverage_start_date  character [optional]
#'
#' @field ending_image_number  character [optional]
#'
#' @field form_type  character [optional]
#'
#' @field receipt_date  character [optional]
#'
#' @field report_type  character [optional]
#'
#' @field report_year  integer [optional]
#'
#' @field status_num  integer [optional]
#'
#' @field sub_id  integer [optional]
#'
#' @field summary_data_complete_date  character [optional]
#'
#' @field summary_data_verification_date  character [optional]
#'
#' @field transaction_data_complete_date  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OperationsLog <- R6::R6Class(
  'OperationsLog',
  public = list(
    `amendment_indicator` = NULL,
    `beginning_image_number` = NULL,
    `candidate_committee_id` = NULL,
    `coverage_end_date` = NULL,
    `coverage_start_date` = NULL,
    `ending_image_number` = NULL,
    `form_type` = NULL,
    `receipt_date` = NULL,
    `report_type` = NULL,
    `report_year` = NULL,
    `status_num` = NULL,
    `sub_id` = NULL,
    `summary_data_complete_date` = NULL,
    `summary_data_verification_date` = NULL,
    `transaction_data_complete_date` = NULL,
    initialize = function(
        `amendment_indicator`=NULL, `beginning_image_number`=NULL, `candidate_committee_id`=NULL, `coverage_end_date`=NULL, `coverage_start_date`=NULL, `ending_image_number`=NULL, `form_type`=NULL, `receipt_date`=NULL, `report_type`=NULL, `report_year`=NULL, `status_num`=NULL, `sub_id`=NULL, `summary_data_complete_date`=NULL, `summary_data_verification_date`=NULL, `transaction_data_complete_date`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`amendment_indicator`)) {
        stopifnot(is.character(`amendment_indicator`), length(`amendment_indicator`) == 1)
        self$`amendment_indicator` <- `amendment_indicator`
      }
      if (!is.null(`beginning_image_number`)) {
        stopifnot(is.character(`beginning_image_number`), length(`beginning_image_number`) == 1)
        self$`beginning_image_number` <- `beginning_image_number`
      }
      if (!is.null(`candidate_committee_id`)) {
        stopifnot(is.character(`candidate_committee_id`), length(`candidate_committee_id`) == 1)
        self$`candidate_committee_id` <- `candidate_committee_id`
      }
      if (!is.null(`coverage_end_date`)) {
        stopifnot(is.character(`coverage_end_date`), length(`coverage_end_date`) == 1)
        self$`coverage_end_date` <- `coverage_end_date`
      }
      if (!is.null(`coverage_start_date`)) {
        stopifnot(is.character(`coverage_start_date`), length(`coverage_start_date`) == 1)
        self$`coverage_start_date` <- `coverage_start_date`
      }
      if (!is.null(`ending_image_number`)) {
        stopifnot(is.character(`ending_image_number`), length(`ending_image_number`) == 1)
        self$`ending_image_number` <- `ending_image_number`
      }
      if (!is.null(`form_type`)) {
        stopifnot(is.character(`form_type`), length(`form_type`) == 1)
        self$`form_type` <- `form_type`
      }
      if (!is.null(`receipt_date`)) {
        stopifnot(is.character(`receipt_date`), length(`receipt_date`) == 1)
        self$`receipt_date` <- `receipt_date`
      }
      if (!is.null(`report_type`)) {
        stopifnot(is.character(`report_type`), length(`report_type`) == 1)
        self$`report_type` <- `report_type`
      }
      if (!is.null(`report_year`)) {
        stopifnot(is.numeric(`report_year`), length(`report_year`) == 1)
        self$`report_year` <- `report_year`
      }
      if (!is.null(`status_num`)) {
        stopifnot(is.numeric(`status_num`), length(`status_num`) == 1)
        self$`status_num` <- `status_num`
      }
      if (!is.null(`sub_id`)) {
        stopifnot(is.numeric(`sub_id`), length(`sub_id`) == 1)
        self$`sub_id` <- `sub_id`
      }
      if (!is.null(`summary_data_complete_date`)) {
        stopifnot(is.character(`summary_data_complete_date`), length(`summary_data_complete_date`) == 1)
        self$`summary_data_complete_date` <- `summary_data_complete_date`
      }
      if (!is.null(`summary_data_verification_date`)) {
        stopifnot(is.character(`summary_data_verification_date`), length(`summary_data_verification_date`) == 1)
        self$`summary_data_verification_date` <- `summary_data_verification_date`
      }
      if (!is.null(`transaction_data_complete_date`)) {
        stopifnot(is.character(`transaction_data_complete_date`), length(`transaction_data_complete_date`) == 1)
        self$`transaction_data_complete_date` <- `transaction_data_complete_date`
      }
    },
    toJSON = function() {
      OperationsLogObject <- list()
      if (!is.null(self$`amendment_indicator`)) {
        OperationsLogObject[['amendment_indicator']] <-
          self$`amendment_indicator`
      }
      if (!is.null(self$`beginning_image_number`)) {
        OperationsLogObject[['beginning_image_number']] <-
          self$`beginning_image_number`
      }
      if (!is.null(self$`candidate_committee_id`)) {
        OperationsLogObject[['candidate_committee_id']] <-
          self$`candidate_committee_id`
      }
      if (!is.null(self$`coverage_end_date`)) {
        OperationsLogObject[['coverage_end_date']] <-
          self$`coverage_end_date`
      }
      if (!is.null(self$`coverage_start_date`)) {
        OperationsLogObject[['coverage_start_date']] <-
          self$`coverage_start_date`
      }
      if (!is.null(self$`ending_image_number`)) {
        OperationsLogObject[['ending_image_number']] <-
          self$`ending_image_number`
      }
      if (!is.null(self$`form_type`)) {
        OperationsLogObject[['form_type']] <-
          self$`form_type`
      }
      if (!is.null(self$`receipt_date`)) {
        OperationsLogObject[['receipt_date']] <-
          self$`receipt_date`
      }
      if (!is.null(self$`report_type`)) {
        OperationsLogObject[['report_type']] <-
          self$`report_type`
      }
      if (!is.null(self$`report_year`)) {
        OperationsLogObject[['report_year']] <-
          self$`report_year`
      }
      if (!is.null(self$`status_num`)) {
        OperationsLogObject[['status_num']] <-
          self$`status_num`
      }
      if (!is.null(self$`sub_id`)) {
        OperationsLogObject[['sub_id']] <-
          self$`sub_id`
      }
      if (!is.null(self$`summary_data_complete_date`)) {
        OperationsLogObject[['summary_data_complete_date']] <-
          self$`summary_data_complete_date`
      }
      if (!is.null(self$`summary_data_verification_date`)) {
        OperationsLogObject[['summary_data_verification_date']] <-
          self$`summary_data_verification_date`
      }
      if (!is.null(self$`transaction_data_complete_date`)) {
        OperationsLogObject[['transaction_data_complete_date']] <-
          self$`transaction_data_complete_date`
      }

      OperationsLogObject
    },
    fromJSON = function(OperationsLogJson) {
      OperationsLogObject <- jsonlite::fromJSON(OperationsLogJson)
      if (!is.null(OperationsLogObject$`amendment_indicator`)) {
        self$`amendment_indicator` <- OperationsLogObject$`amendment_indicator`
      }
      if (!is.null(OperationsLogObject$`beginning_image_number`)) {
        self$`beginning_image_number` <- OperationsLogObject$`beginning_image_number`
      }
      if (!is.null(OperationsLogObject$`candidate_committee_id`)) {
        self$`candidate_committee_id` <- OperationsLogObject$`candidate_committee_id`
      }
      if (!is.null(OperationsLogObject$`coverage_end_date`)) {
        self$`coverage_end_date` <- OperationsLogObject$`coverage_end_date`
      }
      if (!is.null(OperationsLogObject$`coverage_start_date`)) {
        self$`coverage_start_date` <- OperationsLogObject$`coverage_start_date`
      }
      if (!is.null(OperationsLogObject$`ending_image_number`)) {
        self$`ending_image_number` <- OperationsLogObject$`ending_image_number`
      }
      if (!is.null(OperationsLogObject$`form_type`)) {
        self$`form_type` <- OperationsLogObject$`form_type`
      }
      if (!is.null(OperationsLogObject$`receipt_date`)) {
        self$`receipt_date` <- OperationsLogObject$`receipt_date`
      }
      if (!is.null(OperationsLogObject$`report_type`)) {
        self$`report_type` <- OperationsLogObject$`report_type`
      }
      if (!is.null(OperationsLogObject$`report_year`)) {
        self$`report_year` <- OperationsLogObject$`report_year`
      }
      if (!is.null(OperationsLogObject$`status_num`)) {
        self$`status_num` <- OperationsLogObject$`status_num`
      }
      if (!is.null(OperationsLogObject$`sub_id`)) {
        self$`sub_id` <- OperationsLogObject$`sub_id`
      }
      if (!is.null(OperationsLogObject$`summary_data_complete_date`)) {
        self$`summary_data_complete_date` <- OperationsLogObject$`summary_data_complete_date`
      }
      if (!is.null(OperationsLogObject$`summary_data_verification_date`)) {
        self$`summary_data_verification_date` <- OperationsLogObject$`summary_data_verification_date`
      }
      if (!is.null(OperationsLogObject$`transaction_data_complete_date`)) {
        self$`transaction_data_complete_date` <- OperationsLogObject$`transaction_data_complete_date`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`amendment_indicator`)) {
        sprintf(
        '"amendment_indicator":
          "%s"
                ',
        self$`amendment_indicator`
        )},
        if (!is.null(self$`beginning_image_number`)) {
        sprintf(
        '"beginning_image_number":
          "%s"
                ',
        self$`beginning_image_number`
        )},
        if (!is.null(self$`candidate_committee_id`)) {
        sprintf(
        '"candidate_committee_id":
          "%s"
                ',
        self$`candidate_committee_id`
        )},
        if (!is.null(self$`coverage_end_date`)) {
        sprintf(
        '"coverage_end_date":
          "%s"
                ',
        self$`coverage_end_date`
        )},
        if (!is.null(self$`coverage_start_date`)) {
        sprintf(
        '"coverage_start_date":
          "%s"
                ',
        self$`coverage_start_date`
        )},
        if (!is.null(self$`ending_image_number`)) {
        sprintf(
        '"ending_image_number":
          "%s"
                ',
        self$`ending_image_number`
        )},
        if (!is.null(self$`form_type`)) {
        sprintf(
        '"form_type":
          "%s"
                ',
        self$`form_type`
        )},
        if (!is.null(self$`receipt_date`)) {
        sprintf(
        '"receipt_date":
          "%s"
                ',
        self$`receipt_date`
        )},
        if (!is.null(self$`report_type`)) {
        sprintf(
        '"report_type":
          "%s"
                ',
        self$`report_type`
        )},
        if (!is.null(self$`report_year`)) {
        sprintf(
        '"report_year":
          %d
                ',
        self$`report_year`
        )},
        if (!is.null(self$`status_num`)) {
        sprintf(
        '"status_num":
          %d
                ',
        self$`status_num`
        )},
        if (!is.null(self$`sub_id`)) {
        sprintf(
        '"sub_id":
          %d
                ',
        self$`sub_id`
        )},
        if (!is.null(self$`summary_data_complete_date`)) {
        sprintf(
        '"summary_data_complete_date":
          "%s"
                ',
        self$`summary_data_complete_date`
        )},
        if (!is.null(self$`summary_data_verification_date`)) {
        sprintf(
        '"summary_data_verification_date":
          "%s"
                ',
        self$`summary_data_verification_date`
        )},
        if (!is.null(self$`transaction_data_complete_date`)) {
        sprintf(
        '"transaction_data_complete_date":
          "%s"
                ',
        self$`transaction_data_complete_date`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(OperationsLogJson) {
      OperationsLogObject <- jsonlite::fromJSON(OperationsLogJson)
      self$`amendment_indicator` <- OperationsLogObject$`amendment_indicator`
      self$`beginning_image_number` <- OperationsLogObject$`beginning_image_number`
      self$`candidate_committee_id` <- OperationsLogObject$`candidate_committee_id`
      self$`coverage_end_date` <- OperationsLogObject$`coverage_end_date`
      self$`coverage_start_date` <- OperationsLogObject$`coverage_start_date`
      self$`ending_image_number` <- OperationsLogObject$`ending_image_number`
      self$`form_type` <- OperationsLogObject$`form_type`
      self$`receipt_date` <- OperationsLogObject$`receipt_date`
      self$`report_type` <- OperationsLogObject$`report_type`
      self$`report_year` <- OperationsLogObject$`report_year`
      self$`status_num` <- OperationsLogObject$`status_num`
      self$`sub_id` <- OperationsLogObject$`sub_id`
      self$`summary_data_complete_date` <- OperationsLogObject$`summary_data_complete_date`
      self$`summary_data_verification_date` <- OperationsLogObject$`summary_data_verification_date`
      self$`transaction_data_complete_date` <- OperationsLogObject$`transaction_data_complete_date`
      self
    }
  )
)
