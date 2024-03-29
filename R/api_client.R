# OpenFEC
#
# This application programming interface (API) allows you to explore the way candidates and committees fund their campaigns.    The Federal Election Commission (FEC) API is a RESTful web service supporting full-text and field-specific searches on FEC data. [Bulk downloads](https://www.fec.gov/data/advanced/?tab=bulk-data) are available on the current site. Information is tied to the underlying forms by file ID and image ID. Data is updated nightly.    There are a lot of data, and a good place to start is to use search to find interesting candidates and committees. Then, you can use their IDs to find report or line item details with the other endpoints. If you are interested in individual donors, check out contributor information in the `/schedule_a/` endpoints.    <b class=\"body\" id=\"getting_started_head\">Getting started with the openFEC API</b><br>    If you would like to use the FEC's API programmatically, you can sign up for your own API key using our form. Alternatively, you can still try out our API without an API key by using the web interface and using DEMO_KEY. Note that when you use the openFEC API you are subject to the [Terms of Service](https://github.com/fecgov/FEC/blob/master/TERMS-OF-SERVICE.md) and [Acceptable Use policy](https://github.com/fecgov/FEC/blob/master/ACCEPTABLE-USE-POLICY.md).    Signing up for an API key will enable you to place up to 1,000 calls an hour. Each call is limited to 100 results per page. You can email questions, comments or a request to get a key for 7,200 calls an hour (120 calls per minute) to <a href=\"mailto:APIinfo@fec.gov\">APIinfo@fec.gov</a>. You can also ask questions and discuss the data in a community led [group](https://groups.google.com/forum/#!forum/fec-data).    The model definitions and schema are available at [/swagger](/swagger/). This is useful for making wrappers and exploring the data.    A few restrictions limit the way you can use FEC data. For example, you can’t use contributor lists for commercial purposes or to solicit donations. [Learn more here](https://www.fec.gov/updates/sale-or-use-contributor-information/).    [Inspect our source code](https://github.com/fecgov/openFEC). We welcome issues and pull requests!    <p><br></p> <h2 class=\"title\" id=\"signup_head\">Sign up for an API key</h2> <div id=\"apidatagov_signup\">Loading signup form...</div>
#
# The version of the OpenAPI document: 1.0
# 
# Generated by: https://openapi-generator.tech


#' ApiClient Class
#'
#' Generic API client for OpenAPI client library builds.
#' OpenAPI generic API client. This client handles the client-
#' server communication, and is invariant across implementations. Specifics of
#' the methods and models for each application are generated from the OpenAPI Generator
#' templates.
#'
#' NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
#' Ref: https://openapi-generator.tech
#' Do not edit the class manually.
#'
#' @docType class
#' @title ApiClient
#' @description ApiClient Class
#' @format An \code{R6Class} generator object
#' @field basePath Base url
#' @field userAgent Default user agent
#' @field defaultHeaders
#' @field username Username for HTTP basic authentication
#' @field password Password for HTTP basic authentication
#' @field apiKeys
#' @field accessToken
#' @field timeout Default timeout in seconds
#' @field retryStatusCodes vector of status codes to retry
#' @field maxRetryAttempts maximum number of retries for the status codes
#' @importFrom httr add_headers accept timeout content
#' @export
ApiClient  <- R6::R6Class(
  'ApiClient',
  public = list(
    # base path of all requests
    basePath = "http://localhost/v1",
    # user agent in the HTTP request
    userAgent = "OpenAPI-Generator/1.0.0/r",
    # default headers in the HTTP request
    defaultHeaders = NULL,
    # username (HTTP basic authentication)
    username = NULL,
    # password (HTTP basic authentication)
    password = NULL,
    # API keys
    apiKeys = NULL,
    # Access token
    accessToken = NULL,
    # Time Out (seconds)
    timeout = NULL,
    # Vector of status codes to retry
    retryStatusCodes=NULL,
    # Maximum number of retry attempts for the retry status codes
    maxRetryAttempts = NULL,
    # constructor
    initialize = function(basePath=NULL, userAgent=NULL, defaultHeaders=NULL, username=NULL, password=NULL, apiKeys=NULL, accessToken=NULL, timeout=NULL,  retryStatusCodes=NULL, maxRetryAttempts=NULL){
      if (!is.null(basePath)) {
        self$basePath <- basePath
      }

      if (!is.null(defaultHeaders)) {
        self$defaultHeaders <- defaultHeaders
      }

      if (!is.null(username)) {
        self$username <- username
      }

      if (!is.null(password)) {
        self$password <- password
      }

      if (!is.null(accessToken)) {
        self$accessToken <- accessToken
      }

      if (!is.null(apiKeys)) {
        self$apiKeys <- apiKeys
      } else {
        self$apiKeys <- list()
      }

      if (!is.null(userAgent)) {
        self$`userAgent` <- userAgent
      }

      if (!is.null(timeout)) {
        self$timeout <- timeout
      }

      if (!is.null(retryStatusCodes)) {
        self$retryStatusCodes <- retryStatusCodes
      }

      if (!is.null(maxRetryAttempts)) {
        self$maxRetryAttempts <- maxRetryAttempts
      }
    },

    CallApi = function(url, method, queryParams, headerParams, body, ...){

      resp <- self$Execute(url, method, queryParams, headerParams, body, ...)
      statusCode <- httr::status_code(resp)

      if (is.null(self$maxRetryAttempts)) {
        self$maxRetryAttempts = 3
      }
      
      if (!is.null(self$retryStatusCodes)) {

        for (i in 1 : self$maxRetryAttempts) {
          if (statusCode %in% self$retryStatusCodes) {
            Sys.sleep((2 ^ i) + stats::runif(n = 1, min = 0, max = 1))
            resp <- self$Execute(url, method, queryParams, headerParams, body, ...)
            statusCode <- httr::status_code(resp)
          } else {
            break;
          }
        }  
      }

      resp
    },

    Execute = function(url, method, queryParams, headerParams, body, ...){
      headers <- httr::add_headers(c(headerParams, self$defaultHeaders))

      httpTimeout <- NULL
      if (!is.null(self$timeout)) {
        httpTimeout <- httr::timeout(self$timeout)
      }

      if (method == "GET") {
        httr::GET(url, query = queryParams, headers, httpTimeout, httr::user_agent(self$`userAgent`), ...)
      } else if (method == "POST") {
        httr::POST(url, query = queryParams, headers, body = body, httr::content_type("application/json"), httpTimeout, httr::user_agent(self$`userAgent`), ...)
      } else if (method == "PUT") {
        httr::PUT(url, query = queryParams, headers, body = body, httr::content_type("application/json"), httpTimeout, httpTimeout, httr::user_agent(self$`userAgent`), ...)
      } else if (method == "PATCH") {
        httr::PATCH(url, query = queryParams, headers, body = body, httr::content_type("application/json"), httpTimeout, httpTimeout, httr::user_agent(self$`userAgent`), ...)
      } else if (method == "HEAD") {
        httr::HEAD(url, query = queryParams, headers, httpTimeout, httpTimeout, httr::user_agent(self$`userAgent`), ...)
      } else if (method == "DELETE") {
        httr::DELETE(url, query = queryParams, headers, httpTimeout, httpTimeout, httr::user_agent(self$`userAgent`), ...)
      } else {
        errMsg <- "Http method must be `GET`, `HEAD`, `OPTIONS`, `POST`, `PATCH`, `PUT` or `DELETE`."
        stop(errMsg)
      }
    },

    # Deserialize the content of api response to the given type.
    deserialize = function(resp, returnType, pkgEnv) {
      respObj <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      self$deserializeObj(respObj, returnType, pkgEnv)
    },


    # Deserialize the response from jsonlite object based on the given type
    # by handling complex and nested types by iterating recursively
    # Example returnTypes will be like "array[integer]", "map(Pet)", "array[map(Tag)]", etc.,

    deserializeObj = function(obj, returnType, pkgEnv) {
      returnObj <- NULL
      primitiveTypes <- c("character", "numeric", "integer", "logical", "complex")

      # To handle the "map" type 
      if (startsWith(returnType, "map(")) {
        innerReturnType <- regmatches(returnType, regexec(pattern = "map\\((.*)\\)", returnType))[[1]][2]
        returnObj <- lapply(names(obj), function(name) {
          self$deserializeObj(obj[[name]], innerReturnType, pkgEnv)
        })
        names(returnObj) <- names(obj)
      }

      # To handle the "array" type
      else if (startsWith(returnType, "array[")) {
        innerReturnType <- regmatches(returnType, regexec(pattern = "array\\[(.*)\\]", returnType))[[1]][2]
        if (c(innerReturnType) %in% primitiveTypes) {
          returnObj <- vector("list", length = length(obj))
          if (length(obj) > 0) {
            for (row in 1:length(obj)) {
              returnObj[[row]] <- self$deserializeObj(obj[row], innerReturnType, pkgEnv)
            }
          }
        } else {
          if(!is.null(nrow(obj))){
            returnObj <- vector("list", length = nrow(obj))
            if (nrow(obj) > 0) {
              for (row in 1:nrow(obj)) {
                returnObj[[row]] <- self$deserializeObj(obj[row, , drop = FALSE], innerReturnType, pkgEnv)
              }
            }
          }
        }
      }

      # To handle model objects which are not array or map containers. Ex:"Pet"
      else if (exists(returnType, pkgEnv) && !(c(returnType) %in% primitiveTypes)) {
        returnType <- get(returnType, envir = as.environment(pkgEnv))
        returnObj <- returnType$new()
        returnObj$fromJSON(
          jsonlite::toJSON(obj, digits = NA, auto_unbox = TRUE)
        )
      } 

      # To handle primitive type
      else {
        returnObj <- obj
      }
      returnObj
    }
  )
)
