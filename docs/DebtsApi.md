# DebtsApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SchedulesScheduleDGet**](DebtsApi.md#SchedulesScheduleDGet) | **GET** /schedules/schedule_d/ | 
[**SchedulesScheduleDSubIdGet**](DebtsApi.md#SchedulesScheduleDSubIdGet) | **GET** /schedules/schedule_d/{sub_id}/ | 


# **SchedulesScheduleDGet**
> InlineResponseDefault4 SchedulesScheduleDGet(api.key, min.date=var.min.date, max.image.number=var.max.image.number, per.page=20, min.amount.incurred=var.min.amount.incurred, min.amount.outstanding.beginning=var.min.amount.outstanding.beginning, committee.id=var.committee.id, sort='load_date', max.amount.outstanding.beginning=var.max.amount.outstanding.beginning, max.amount.incurred=var.max.amount.incurred, max.amount.outstanding.close=var.max.amount.outstanding.close, creditor.debtor.name=var.creditor.debtor.name, min.payment.period=var.min.payment.period, min.image.number=var.min.image.number, sort.hide.null=FALSE, max.date=var.max.date, image.number=var.image.number, min.amount.outstanding.close=var.min.amount.outstanding.close, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, nature.of.debt=var.nature.of.debt, max.payment.period=var.max.payment.period, page=1)



 Schedule D, it shows debts and obligations owed to or by the committee that are required to be disclosed.   

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.date <- 'min.date_example' # character | Minimum load date
var.max.image.number <- 'max.image.number_example' # character | 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.min.amount.incurred <- 3.4 # numeric | 
var.min.amount.outstanding.beginning <- 3.4 # numeric | 
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- 'load_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.max.amount.outstanding.beginning <- 3.4 # numeric | 
var.max.amount.incurred <- 3.4 # numeric | 
var.max.amount.outstanding.close <- 3.4 # numeric | 
var.creditor.debtor.name <- list("inner_example") # array[character] | 
var.min.payment.period <- 3.4 # numeric | 
var.min.image.number <- 'min.image.number_example' # character | 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.date <- 'max.date_example' # character | Maximum load date
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.min.amount.outstanding.close <- 3.4 # numeric | 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.nature.of.debt <- 'nature.of.debt_example' # character | 
var.max.payment.period <- 3.4 # numeric | 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- DebtsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleDGet(var.api.key, min.date=var.min.date, max.image.number=var.max.image.number, per.page=var.per.page, min.amount.incurred=var.min.amount.incurred, min.amount.outstanding.beginning=var.min.amount.outstanding.beginning, committee.id=var.committee.id, sort=var.sort, max.amount.outstanding.beginning=var.max.amount.outstanding.beginning, max.amount.incurred=var.max.amount.incurred, max.amount.outstanding.close=var.max.amount.outstanding.close, creditor.debtor.name=var.creditor.debtor.name, min.payment.period=var.min.payment.period, min.image.number=var.min.image.number, sort.hide.null=var.sort.hide.null, max.date=var.max.date, image.number=var.image.number, min.amount.outstanding.close=var.min.amount.outstanding.close, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, nature.of.debt=var.nature.of.debt, max.payment.period=var.max.payment.period, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.date** | **character**| Minimum load date | [optional] 
 **max.image.number** | **character**|  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **min.amount.incurred** | **numeric**|  | [optional] 
 **min.amount.outstanding.beginning** | **numeric**|  | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;load_date&#39;]
 **max.amount.outstanding.beginning** | **numeric**|  | [optional] 
 **max.amount.incurred** | **numeric**|  | [optional] 
 **max.amount.outstanding.close** | **numeric**|  | [optional] 
 **creditor.debtor.name** | list( **character** )|  | [optional] 
 **min.payment.period** | **numeric**|  | [optional] 
 **min.image.number** | **character**|  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.date** | **character**| Maximum load date | [optional] 
 **image.number** | list( **character** )| The image number of the page where the schedule item is reported | [optional] 
 **min.amount.outstanding.close** | **numeric**|  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **nature.of.debt** | **character**|  | [optional] 
 **max.payment.period** | **numeric**|  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**InlineResponseDefault4**](inline_response_default_4.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleDSubIdGet**
> InlineResponseDefault4 SchedulesScheduleDSubIdGet(api.key, sub.id, sort='load_date', sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, page=1, sort.null.only=FALSE)



 Schedule D, it shows debts and obligations owed to or by the committee that are required to be disclosed.   

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sub.id <- 'sub.id_example' # character | 
var.sort <- 'load_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.page <- 1 # integer | For paginating through results, starting at page 1
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null

api.instance <- DebtsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleDSubIdGet(var.api.key, var.sub.id, sort=var.sort, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, page=var.page, sort.null.only=var.sort.null.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sub.id** | **character**|  | 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;load_date&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]

### Return type

[**InlineResponseDefault4**](inline_response_default_4.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

