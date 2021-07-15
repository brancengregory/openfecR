# LoansApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SchedulesScheduleCGet**](LoansApi.md#SchedulesScheduleCGet) | **GET** /schedules/schedule_c/ | 
[**SchedulesScheduleCSubIdGet**](LoansApi.md#SchedulesScheduleCSubIdGet) | **GET** /schedules/schedule_c/{sub_id}/ | 


# **SchedulesScheduleCGet**
> InlineResponseDefault3 SchedulesScheduleCGet(api.key, max.image.number=var.max.image.number, max.amount=var.max.amount, per.page=20, min.payment.to.date=var.min.payment.to.date, max.payment.to.date=var.max.payment.to.date, line.number=var.line.number, committee.id=var.committee.id, sort='-incurred_date', candidate.name=var.candidate.name, min.amount=var.min.amount, last.index=var.last.index, max.incurred.date=var.max.incurred.date, min.image.number=var.min.image.number, sort.hide.null=FALSE, image.number=var.image.number, min.incurred.date=var.min.incurred.date, sort.nulls.last=TRUE, sort.null.only=FALSE, loan.source.name=var.loan.source.name, page=1)



 Schedule C shows all loans, endorsements and loan guarantees a committee receives or makes.  The committee continues to report the loan until it is repaid. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.max.image.number <- 'max.image.number_example' # character | 
var.max.amount <- 'max.amount_example' # character |  Filter for all amounts less than a value. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.min.payment.to.date <- 56 # integer |  Minimum payment to date 
var.max.payment.to.date <- 56 # integer |  Maximum payment to date 
var.line.number <- 'line.number_example' # character |  Filter for form and line number using the following format: `FORM-LINENUMBER`.  For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`. 
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- '-incurred_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.candidate.name <- list("inner_example") # array[character] | Name of candidate running for office
var.min.amount <- 'min.amount_example' # character |  Filter for all amounts greater than a value. 
var.last.index <- 56 # integer | Index of last result from previous page
var.max.incurred.date <- 'max.incurred.date_example' # character |  Maximum incurred date 
var.min.image.number <- 'min.image.number_example' # character | 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.image.number <- list("inner_example") # array[character] |  An unique identifier for each page where the electronic or paper filing is reported. 
var.min.incurred.date <- 'min.incurred.date_example' # character |  Minimum incurred date 
var.sort.nulls.last <- TRUE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.loan.source.name <- list("inner_example") # array[character] | Source of the loan (i.e., bank loan, brokerage account, credit card, home equity line of credit,               other line of credit, or personal funds of the candidate
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- LoansApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleCGet(var.api.key, max.image.number=var.max.image.number, max.amount=var.max.amount, per.page=var.per.page, min.payment.to.date=var.min.payment.to.date, max.payment.to.date=var.max.payment.to.date, line.number=var.line.number, committee.id=var.committee.id, sort=var.sort, candidate.name=var.candidate.name, min.amount=var.min.amount, last.index=var.last.index, max.incurred.date=var.max.incurred.date, min.image.number=var.min.image.number, sort.hide.null=var.sort.hide.null, image.number=var.image.number, min.incurred.date=var.min.incurred.date, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, loan.source.name=var.loan.source.name, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **max.image.number** | **character**|  | [optional] 
 **max.amount** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **min.payment.to.date** | **integer**|  Minimum payment to date  | [optional] 
 **max.payment.to.date** | **integer**|  Maximum payment to date  | [optional] 
 **line.number** | **character**|  Filter for form and line number using the following format: &#x60;FORM-LINENUMBER&#x60;.  For example an argument such as &#x60;F3X-16&#x60; would filter down to all entries from form &#x60;F3X&#x60; line number &#x60;16&#x60;.  | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-incurred_date&#39;]
 **candidate.name** | list( **character** )| Name of candidate running for office | [optional] 
 **min.amount** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **last.index** | **integer**| Index of last result from previous page | [optional] 
 **max.incurred.date** | **character**|  Maximum incurred date  | [optional] 
 **min.image.number** | **character**|  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **image.number** | list( **character** )|  An unique identifier for each page where the electronic or paper filing is reported.  | [optional] 
 **min.incurred.date** | **character**|  Minimum incurred date  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to TRUE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **loan.source.name** | list( **character** )| Source of the loan (i.e., bank loan, brokerage account, credit card, home equity line of credit,               other line of credit, or personal funds of the candidate | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**InlineResponseDefault3**](inline_response_default_3.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleCSubIdGet**
> InlineResponseDefault3 SchedulesScheduleCSubIdGet(api.key, sub.id, sort='null', sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, page=1, sort.null.only=FALSE)



 Schedule C shows all loans, endorsements and loan guarantees a committee receives or makes.  The committee continues to report the loan until it is repaid. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sub.id <- 'sub.id_example' # character | 
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.page <- 1 # integer | For paginating through results, starting at page 1
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null

api.instance <- LoansApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleCSubIdGet(var.api.key, var.sub.id, sort=var.sort, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, page=var.page, sort.null.only=var.sort.null.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sub.id** | **character**|  | 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]

### Return type

[**InlineResponseDefault3**](inline_response_default_3.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

