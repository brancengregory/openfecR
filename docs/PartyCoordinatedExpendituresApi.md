# PartyCoordinatedExpendituresApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SchedulesScheduleFGet**](PartyCoordinatedExpendituresApi.md#SchedulesScheduleFGet) | **GET** /schedules/schedule_f/ | 
[**SchedulesScheduleFSubIdGet**](PartyCoordinatedExpendituresApi.md#SchedulesScheduleFSubIdGet) | **GET** /schedules/schedule_f/{sub_id}/ | 


# **SchedulesScheduleFGet**
> InlineResponseDefault5 SchedulesScheduleFGet(api.key, min.date=var.min.date, max.image.number=var.max.image.number, max.amount=var.max.amount, line.number=var.line.number, payee.name=var.payee.name, per.page=20, committee.id=var.committee.id, sort='expenditure_date', cycle=var.cycle, min.amount=var.min.amount, min.image.number=var.min.image.number, sort.hide.null=FALSE, max.date=var.max.date, image.number=var.image.number, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, page=1)



 Schedule F, it shows all special expenditures a national or state party committee makes in connection with the general election campaigns of federal candidates.  These coordinated party expenditures do not count against the contribution limits but are subject to other limits, these limits are detailed in Chapter 7 of the FEC Campaign Guide for Political Party Committees. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.date <- 'min.date_example' # character | Minimum date
var.max.image.number <- 'max.image.number_example' # character | 
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.line.number <- 'line.number_example' # character | Filter for form and line number using the following format: `FORM-LINENUMBER`.  For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
var.payee.name <- list("inner_example") # array[character] | 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- 'expenditure_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.min.amount <- 'min.amount_example' # character | Filter for all amounts greater than a value.
var.min.image.number <- 'min.image.number_example' # character | 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.date <- 'max.date_example' # character | Maximum date
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- PartyCoordinatedExpendituresApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleFGet(var.api.key, min.date=var.min.date, max.image.number=var.max.image.number, max.amount=var.max.amount, line.number=var.line.number, payee.name=var.payee.name, per.page=var.per.page, committee.id=var.committee.id, sort=var.sort, cycle=var.cycle, min.amount=var.min.amount, min.image.number=var.min.image.number, sort.hide.null=var.sort.hide.null, max.date=var.max.date, image.number=var.image.number, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.date** | **character**| Minimum date | [optional] 
 **max.image.number** | **character**|  | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **line.number** | **character**| Filter for form and line number using the following format: &#x60;FORM-LINENUMBER&#x60;.  For example an argument such as &#x60;F3X-16&#x60; would filter down to all entries from form &#x60;F3X&#x60; line number &#x60;16&#x60;. | [optional] 
 **payee.name** | list( **character** )|  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;expenditure_date&#39;]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **min.amount** | **character**| Filter for all amounts greater than a value. | [optional] 
 **min.image.number** | **character**|  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.date** | **character**| Maximum date | [optional] 
 **image.number** | list( **character** )| The image number of the page where the schedule item is reported | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**InlineResponseDefault5**](inline_response_default_5.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleFSubIdGet**
> InlineResponseDefault5 SchedulesScheduleFSubIdGet(api.key, sub.id, per.page=20, page=1)



 Schedule F, it shows all special expenditures a national or state party committee makes in connection with the general election campaigns of federal candidates.  These coordinated party expenditures do not count against the contribution limits but are subject to other limits, these limits are detailed in Chapter 7 of the FEC Campaign Guide for Political Party Committees. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sub.id <- 'sub.id_example' # character | 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- PartyCoordinatedExpendituresApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleFSubIdGet(var.api.key, var.sub.id, per.page=var.per.page, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sub.id** | **character**|  | 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**InlineResponseDefault5**](inline_response_default_5.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

