# OpenFEC
#
# This application programming interface (API) allows you to explore the way candidates and committees fund their campaigns.    The Federal Election Commission (FEC) API is a RESTful web service supporting full-text and field-specific searches on FEC data. [Bulk downloads](https://www.fec.gov/data/advanced/?tab=bulk-data) are available on the current site. Information is tied to the underlying forms by file ID and image ID. Data is updated nightly.    There are a lot of data, and a good place to start is to use search to find interesting candidates and committees. Then, you can use their IDs to find report or line item details with the other endpoints. If you are interested in individual donors, check out contributor information in the `/schedule_a/` endpoints.    <b class=\"body\" id=\"getting_started_head\">Getting started with the openFEC API</b><br>    If you would like to use the FEC's API programmatically, you can sign up for your own API key using our form. Alternatively, you can still try out our API without an API key by using the web interface and using DEMO_KEY. Note that when you use the openFEC API you are subject to the [Terms of Service](https://github.com/fecgov/FEC/blob/master/TERMS-OF-SERVICE.md) and [Acceptable Use policy](https://github.com/fecgov/FEC/blob/master/ACCEPTABLE-USE-POLICY.md).    Signing up for an API key will enable you to place up to 1,000 calls an hour. Each call is limited to 100 results per page. You can email questions, comments or a request to get a key for 7,200 calls an hour (120 calls per minute) to <a href=\"mailto:APIinfo@fec.gov\">APIinfo@fec.gov</a>. You can also ask questions and discuss the data in a community led [group](https://groups.google.com/forum/#!forum/fec-data).    The model definitions and schema are available at [/swagger](/swagger/). This is useful for making wrappers and exploring the data.    A few restrictions limit the way you can use FEC data. For example, you can’t use contributor lists for commercial purposes or to solicit donations. [Learn more here](https://www.fec.gov/updates/sale-or-use-contributor-information/).    [Inspect our source code](https://github.com/fecgov/openFEC). We welcome issues and pull requests!    <p><br></p> <h2 class=\"title\" id=\"signup_head\">Sign up for an API key</h2> <div id=\"apidatagov_signup\">Loading signup form...</div>
#
# The version of the OpenAPI document: 1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Efiling operations
#' @description openapi.Efiling
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ EfileFilingsGet } \emph{  }
#' Basic information about electronic files coming into the FEC, posted as they are received.
#'
#' \itemize{
#' \item \emph{ @param } api.key character
#' \item \emph{ @param } min.receipt.date character
#' \item \emph{ @param } sort.hide.null character
#' \item \emph{ @param } file.number list( integer )
#' \item \emph{ @param } per.page integer
#' \item \emph{ @param } max.receipt.date character
#' \item \emph{ @param } sort.nulls.last character
#' \item \emph{ @param } committee.id list( character )
#' \item \emph{ @param } sort.null.only character
#' \item \emph{ @param } sort character
#' \item \emph{ @param } page integer
#' \item \emph{ @returnType } \link{EFilingsPage} \cr
#'
#'
#' \item status code : 0 | 
#'
#' \item return type : EFilingsPage 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ EfileReportsHouseSenateGet } \emph{  }
#'  Key financial data reported periodically by committees as they are reported. This feed includes summary information from the the House F3 reports, the presidential F3p reports and the PAC and party F3x reports.  Generally, committees file reports on a quarterly or monthly basis, but some must also submit a report 12 days before primary elections. Therefore, during the primary season, the period covered by this file may be different for different committees. These totals also incorporate any changes made by committees, if any report covering the period is amended.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 
#'
#' \itemize{
#' \item \emph{ @param } api.key character
#' \item \emph{ @param } min.receipt.date character
#' \item \emph{ @param } sort.hide.null character
#' \item \emph{ @param } file.number list( integer )
#' \item \emph{ @param } per.page integer
#' \item \emph{ @param } max.receipt.date character
#' \item \emph{ @param } sort.nulls.last character
#' \item \emph{ @param } committee.id list( character )
#' \item \emph{ @param } sort.null.only character
#' \item \emph{ @param } sort character
#' \item \emph{ @param } page integer
#' \item \emph{ @returnType } \link{BaseF3FilingPage} \cr
#'
#'
#' \item status code : 0 | 
#'
#' \item return type : BaseF3FilingPage 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ EfileReportsPacPartyGet } \emph{  }
#'  Key financial data reported periodically by committees as they are reported. This feed includes summary information from the the House F3 reports, the presidential F3p reports and the PAC and party F3x reports.  Generally, committees file reports on a quarterly or monthly basis, but some must also submit a report 12 days before primary elections. Therefore, during the primary season, the period covered by this file may be different for different committees. These totals also incorporate any changes made by committees, if any report covering the period is amended.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 
#'
#' \itemize{
#' \item \emph{ @param } api.key character
#' \item \emph{ @param } min.receipt.date character
#' \item \emph{ @param } sort.hide.null character
#' \item \emph{ @param } file.number list( integer )
#' \item \emph{ @param } per.page integer
#' \item \emph{ @param } max.receipt.date character
#' \item \emph{ @param } sort.nulls.last character
#' \item \emph{ @param } committee.id list( character )
#' \item \emph{ @param } sort.null.only character
#' \item \emph{ @param } sort character
#' \item \emph{ @param } page integer
#' \item \emph{ @returnType } \link{BaseF3XFilingPage} \cr
#'
#'
#' \item status code : 0 | 
#'
#' \item return type : BaseF3XFilingPage 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ EfileReportsPresidentialGet } \emph{  }
#'  Key financial data reported periodically by committees as they are reported. This feed includes summary information from the the House F3 reports, the presidential F3p reports and the PAC and party F3x reports.  Generally, committees file reports on a quarterly or monthly basis, but some must also submit a report 12 days before primary elections. Therefore, during the primary season, the period covered by this file may be different for different committees. These totals also incorporate any changes made by committees, if any report covering the period is amended.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 
#'
#' \itemize{
#' \item \emph{ @param } api.key character
#' \item \emph{ @param } min.receipt.date character
#' \item \emph{ @param } sort.hide.null character
#' \item \emph{ @param } file.number list( integer )
#' \item \emph{ @param } per.page integer
#' \item \emph{ @param } max.receipt.date character
#' \item \emph{ @param } sort.nulls.last character
#' \item \emph{ @param } committee.id list( character )
#' \item \emph{ @param } sort.null.only character
#' \item \emph{ @param } sort character
#' \item \emph{ @param } page integer
#' \item \emph{ @returnType } \link{BaseF3PFilingPage} \cr
#'
#'
#' \item status code : 0 | 
#'
#' \item return type : BaseF3PFilingPage 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  EfileFilingsGet  ####################
#'
#' library(openapi)
#' var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
#' var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
#' var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
#' var.file.number <- [56] # array[integer] | Filing ID number
#' var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
#' var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
#' var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
#' var.committee.id <- ['committee.id_example'] # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
#' var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
#' var.sort <- '-receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
#' var.page <- 1 # integer | For paginating through results, starting at page 1
#'
#' api.instance <- EfilingApi$new()
#'
#' #Configure API key authorization: ApiKeyHeaderAuth
#' api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
#'
#' #Configure API key authorization: ApiKeyQueryAuth
#' api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
#'
#' #Configure API key authorization: apiKey
#' api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$EfileFilingsGet(var.api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=var.sort.hide.null, file.number=var.file.number, per.page=var.per.page, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
#'
#'
#' ####################  EfileReportsHouseSenateGet  ####################
#'
#' library(openapi)
#' var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
#' var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
#' var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
#' var.file.number <- [56] # array[integer] | Filing ID number
#' var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
#' var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
#' var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
#' var.committee.id <- ['committee.id_example'] # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
#' var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
#' var.sort <- '-receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
#' var.page <- 1 # integer | For paginating through results, starting at page 1
#'
#' api.instance <- EfilingApi$new()
#'
#' #Configure API key authorization: ApiKeyHeaderAuth
#' api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
#'
#' #Configure API key authorization: ApiKeyQueryAuth
#' api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
#'
#' #Configure API key authorization: apiKey
#' api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$EfileReportsHouseSenateGet(var.api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=var.sort.hide.null, file.number=var.file.number, per.page=var.per.page, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
#'
#'
#' ####################  EfileReportsPacPartyGet  ####################
#'
#' library(openapi)
#' var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
#' var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
#' var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
#' var.file.number <- [56] # array[integer] | Filing ID number
#' var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
#' var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
#' var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
#' var.committee.id <- ['committee.id_example'] # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
#' var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
#' var.sort <- '-receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
#' var.page <- 1 # integer | For paginating through results, starting at page 1
#'
#' api.instance <- EfilingApi$new()
#'
#' #Configure API key authorization: ApiKeyHeaderAuth
#' api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
#'
#' #Configure API key authorization: ApiKeyQueryAuth
#' api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
#'
#' #Configure API key authorization: apiKey
#' api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$EfileReportsPacPartyGet(var.api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=var.sort.hide.null, file.number=var.file.number, per.page=var.per.page, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
#'
#'
#' ####################  EfileReportsPresidentialGet  ####################
#'
#' library(openapi)
#' var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
#' var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
#' var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
#' var.file.number <- [56] # array[integer] | Filing ID number
#' var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
#' var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
#' var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
#' var.committee.id <- ['committee.id_example'] # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
#' var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
#' var.sort <- '-receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
#' var.page <- 1 # integer | For paginating through results, starting at page 1
#'
#' api.instance <- EfilingApi$new()
#'
#' #Configure API key authorization: ApiKeyHeaderAuth
#' api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
#'
#' #Configure API key authorization: ApiKeyQueryAuth
#' api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
#'
#' #Configure API key authorization: apiKey
#' api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$EfileReportsPresidentialGet(var.api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=var.sort.hide.null, file.number=var.file.number, per.page=var.per.page, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
EfilingApi <- R6::R6Class(
  'EfilingApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    EfileFilingsGet = function(api.key, min.receipt.date=NULL, sort.hide.null=FALSE, file.number=NULL, per.page=20, max.receipt.date=NULL, sort.nulls.last=FALSE, committee.id=NULL, sort.null.only=FALSE, sort='-receipt_date', page=1, ...){
      apiResponse <- self$EfileFilingsGetWithHttpInfo(api.key, min.receipt.date, sort.hide.null, file.number, per.page, max.receipt.date, sort.nulls.last, committee.id, sort.null.only, sort, page, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    EfileFilingsGetWithHttpInfo = function(api.key, min.receipt.date=NULL, sort.hide.null=FALSE, file.number=NULL, per.page=20, max.receipt.date=NULL, sort.nulls.last=FALSE, committee.id=NULL, sort.null.only=FALSE, sort='-receipt_date', page=1, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`api.key`)) {
        stop("Missing required parameter `api.key`.")
      }

      queryParams['min_receipt_date'] <- min.receipt.date

      queryParams['sort_hide_null'] <- sort.hide.null

      queryParams['file_number'] <- file.number

      queryParams['per_page'] <- per.page

      queryParams['max_receipt_date'] <- max.receipt.date

      queryParams['sort_nulls_last'] <- sort.nulls.last

      queryParams['committee_id'] <- committee.id

      queryParams['sort_null_only'] <- sort.null.only

      queryParams['sort'] <- sort

      queryParams['page'] <- page

      queryParams['api_key'] <- api.key

      body <- NULL
      urlPath <- "/efile/filings/"
      # API key authentication
      if ("X-Api-Key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["X-Api-Key"]) > 0) {
        headerParams['X-Api-Key'] <- paste(unlist(self$apiClient$apiKeys["X-Api-Key"]), collapse='')
      }
      # API key authentication
      if ("api_key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["api_key"]) > 0) {
        queryParams['api_key'] <- paste(unlist(self$apiClient$apiKeys["api_key"]), collapse='')
      }
      # API key authentication
      if ("api_key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["api_key"]) > 0) {
        queryParams['api_key'] <- paste(unlist(self$apiClient$apiKeys["api_key"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "EFilingsPage", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    EfileReportsHouseSenateGet = function(api.key, min.receipt.date=NULL, sort.hide.null=FALSE, file.number=NULL, per.page=20, max.receipt.date=NULL, sort.nulls.last=FALSE, committee.id=NULL, sort.null.only=FALSE, sort='-receipt_date', page=1, ...){
      apiResponse <- self$EfileReportsHouseSenateGetWithHttpInfo(api.key, min.receipt.date, sort.hide.null, file.number, per.page, max.receipt.date, sort.nulls.last, committee.id, sort.null.only, sort, page, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    EfileReportsHouseSenateGetWithHttpInfo = function(api.key, min.receipt.date=NULL, sort.hide.null=FALSE, file.number=NULL, per.page=20, max.receipt.date=NULL, sort.nulls.last=FALSE, committee.id=NULL, sort.null.only=FALSE, sort='-receipt_date', page=1, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`api.key`)) {
        stop("Missing required parameter `api.key`.")
      }

      queryParams['min_receipt_date'] <- min.receipt.date

      queryParams['sort_hide_null'] <- sort.hide.null

      queryParams['file_number'] <- file.number

      queryParams['per_page'] <- per.page

      queryParams['max_receipt_date'] <- max.receipt.date

      queryParams['sort_nulls_last'] <- sort.nulls.last

      queryParams['committee_id'] <- committee.id

      queryParams['sort_null_only'] <- sort.null.only

      queryParams['sort'] <- sort

      queryParams['page'] <- page

      queryParams['api_key'] <- api.key

      body <- NULL
      urlPath <- "/efile/reports/house-senate/"
      # API key authentication
      if ("X-Api-Key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["X-Api-Key"]) > 0) {
        headerParams['X-Api-Key'] <- paste(unlist(self$apiClient$apiKeys["X-Api-Key"]), collapse='')
      }
      # API key authentication
      if ("api_key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["api_key"]) > 0) {
        queryParams['api_key'] <- paste(unlist(self$apiClient$apiKeys["api_key"]), collapse='')
      }
      # API key authentication
      if ("api_key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["api_key"]) > 0) {
        queryParams['api_key'] <- paste(unlist(self$apiClient$apiKeys["api_key"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "BaseF3FilingPage", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    EfileReportsPacPartyGet = function(api.key, min.receipt.date=NULL, sort.hide.null=FALSE, file.number=NULL, per.page=20, max.receipt.date=NULL, sort.nulls.last=FALSE, committee.id=NULL, sort.null.only=FALSE, sort='-receipt_date', page=1, ...){
      apiResponse <- self$EfileReportsPacPartyGetWithHttpInfo(api.key, min.receipt.date, sort.hide.null, file.number, per.page, max.receipt.date, sort.nulls.last, committee.id, sort.null.only, sort, page, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    EfileReportsPacPartyGetWithHttpInfo = function(api.key, min.receipt.date=NULL, sort.hide.null=FALSE, file.number=NULL, per.page=20, max.receipt.date=NULL, sort.nulls.last=FALSE, committee.id=NULL, sort.null.only=FALSE, sort='-receipt_date', page=1, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`api.key`)) {
        stop("Missing required parameter `api.key`.")
      }

      queryParams['min_receipt_date'] <- min.receipt.date

      queryParams['sort_hide_null'] <- sort.hide.null

      queryParams['file_number'] <- file.number

      queryParams['per_page'] <- per.page

      queryParams['max_receipt_date'] <- max.receipt.date

      queryParams['sort_nulls_last'] <- sort.nulls.last

      queryParams['committee_id'] <- committee.id

      queryParams['sort_null_only'] <- sort.null.only

      queryParams['sort'] <- sort

      queryParams['page'] <- page

      queryParams['api_key'] <- api.key

      body <- NULL
      urlPath <- "/efile/reports/pac-party/"
      # API key authentication
      if ("X-Api-Key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["X-Api-Key"]) > 0) {
        headerParams['X-Api-Key'] <- paste(unlist(self$apiClient$apiKeys["X-Api-Key"]), collapse='')
      }
      # API key authentication
      if ("api_key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["api_key"]) > 0) {
        queryParams['api_key'] <- paste(unlist(self$apiClient$apiKeys["api_key"]), collapse='')
      }
      # API key authentication
      if ("api_key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["api_key"]) > 0) {
        queryParams['api_key'] <- paste(unlist(self$apiClient$apiKeys["api_key"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "BaseF3XFilingPage", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    EfileReportsPresidentialGet = function(api.key, min.receipt.date=NULL, sort.hide.null=FALSE, file.number=NULL, per.page=20, max.receipt.date=NULL, sort.nulls.last=FALSE, committee.id=NULL, sort.null.only=FALSE, sort='-receipt_date', page=1, ...){
      apiResponse <- self$EfileReportsPresidentialGetWithHttpInfo(api.key, min.receipt.date, sort.hide.null, file.number, per.page, max.receipt.date, sort.nulls.last, committee.id, sort.null.only, sort, page, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    EfileReportsPresidentialGetWithHttpInfo = function(api.key, min.receipt.date=NULL, sort.hide.null=FALSE, file.number=NULL, per.page=20, max.receipt.date=NULL, sort.nulls.last=FALSE, committee.id=NULL, sort.null.only=FALSE, sort='-receipt_date', page=1, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`api.key`)) {
        stop("Missing required parameter `api.key`.")
      }

      queryParams['min_receipt_date'] <- min.receipt.date

      queryParams['sort_hide_null'] <- sort.hide.null

      queryParams['file_number'] <- file.number

      queryParams['per_page'] <- per.page

      queryParams['max_receipt_date'] <- max.receipt.date

      queryParams['sort_nulls_last'] <- sort.nulls.last

      queryParams['committee_id'] <- committee.id

      queryParams['sort_null_only'] <- sort.null.only

      queryParams['sort'] <- sort

      queryParams['page'] <- page

      queryParams['api_key'] <- api.key

      body <- NULL
      urlPath <- "/efile/reports/presidential/"
      # API key authentication
      if ("X-Api-Key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["X-Api-Key"]) > 0) {
        headerParams['X-Api-Key'] <- paste(unlist(self$apiClient$apiKeys["X-Api-Key"]), collapse='')
      }
      # API key authentication
      if ("api_key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["api_key"]) > 0) {
        queryParams['api_key'] <- paste(unlist(self$apiClient$apiKeys["api_key"]), collapse='')
      }
      # API key authentication
      if ("api_key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["api_key"]) > 0) {
        queryParams['api_key'] <- paste(unlist(self$apiClient$apiKeys["api_key"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "BaseF3PFilingPage", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)
