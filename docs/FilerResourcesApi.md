# FilerResourcesApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RadAnalystGet**](FilerResourcesApi.md#RadAnalystGet) | **GET** /rad-analyst/ | 
[**StateElectionOfficeGet**](FilerResourcesApi.md#StateElectionOfficeGet) | **GET** /state-election-office/ | 


# **RadAnalystGet**
> RadAnalystPage RadAnalystGet(api.key, telephone.ext=var.telephone.ext, analyst.id=var.analyst.id, sort.hide.null=FALSE, min.assignment.update.date=var.min.assignment.update.date, email=var.email, per.page=20, name=var.name, max.assignment.update.date=var.max.assignment.update.date, analyst.short.id=var.analyst.short.id, committee.id=var.committee.id, sort.null.only=FALSE, sort='null', sort.nulls.last=FALSE, title=var.title, page=1)



 Use this endpoint to look up the RAD Analyst for a committee.  The mission of the Reports Analysis Division (RAD) is to ensure that campaigns and political committees file timely and accurate reports that fully disclose their financial activities.  RAD is responsible for reviewing statements and financial reports filed by political committees participating in federal elections, providing assistance and guidance to the committees to properly file their reports, and for taking appropriate action to ensure compliance with the Federal Election Campaign Act (FECA). 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.telephone.ext <- list(123) # array[integer] | Telephone extension of RAD analyst
var.analyst.id <- list(123) # array[integer] | ID of RAD analyst
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.min.assignment.update.date <- 'min.assignment.update.date_example' # character | Filter results for assignment updates made after this date
var.email <- list("inner_example") # array[character] | Email of RAD analyst
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.name <- list("inner_example") # array[character] | Name of RAD analyst
var.max.assignment.update.date <- 'max.assignment.update.date_example' # character | Filter results for assignment updates made before this date
var.analyst.short.id <- list(123) # array[integer] | Short ID of RAD analyst
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.title <- list("inner_example") # array[character] | Title of RAD analyst
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FilerResourcesApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$RadAnalystGet(var.api.key, telephone.ext=var.telephone.ext, analyst.id=var.analyst.id, sort.hide.null=var.sort.hide.null, min.assignment.update.date=var.min.assignment.update.date, email=var.email, per.page=var.per.page, name=var.name, max.assignment.update.date=var.max.assignment.update.date, analyst.short.id=var.analyst.short.id, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, sort.nulls.last=var.sort.nulls.last, title=var.title, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **telephone.ext** | list( **integer** )| Telephone extension of RAD analyst | [optional] 
 **analyst.id** | list( **integer** )| ID of RAD analyst | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **min.assignment.update.date** | **character**| Filter results for assignment updates made after this date | [optional] 
 **email** | list( **character** )| Email of RAD analyst | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **name** | list( **character** )| Name of RAD analyst | [optional] 
 **max.assignment.update.date** | **character**| Filter results for assignment updates made before this date | [optional] 
 **analyst.short.id** | list( **integer** )| Short ID of RAD analyst | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **title** | list( **character** )| Title of RAD analyst | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**RadAnalystPage**](RadAnalystPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **StateElectionOfficeGet**
> StateElectionOfficeInfoPage StateElectionOfficeGet(api.key, state, sort='null', sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, page=1, sort.null.only=FALSE)



 State laws and procedures govern elections for state or local offices as well as how candidates appear on election ballots. Contact the appropriate state election office for more information. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.state <- 'state_example' # character |  Enter a state (Ex: AK, TX, VA etc..) to find the local election offices contact information.  
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.page <- 1 # integer | For paginating through results, starting at page 1
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null

api.instance <- FilerResourcesApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$StateElectionOfficeGet(var.api.key, var.state, sort=var.sort, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, page=var.page, sort.null.only=var.sort.null.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **state** | **character**|  Enter a state (Ex: AK, TX, VA etc..) to find the local election offices contact information.   | 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]

### Return type

[**StateElectionOfficeInfoPage**](StateElectionOfficeInfoPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

