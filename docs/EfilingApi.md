# EfilingApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EfileFilingsGet**](EfilingApi.md#EfileFilingsGet) | **GET** /efile/filings/ | 
[**EfileReportsHouseSenateGet**](EfilingApi.md#EfileReportsHouseSenateGet) | **GET** /efile/reports/house-senate/ | 
[**EfileReportsPacPartyGet**](EfilingApi.md#EfileReportsPacPartyGet) | **GET** /efile/reports/pac-party/ | 
[**EfileReportsPresidentialGet**](EfilingApi.md#EfileReportsPresidentialGet) | **GET** /efile/reports/presidential/ | 


# **EfileFilingsGet**
> EFilingsPage EfileFilingsGet(api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=FALSE, file.number=var.file.number, per.page=20, max.receipt.date=var.max.receipt.date, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='-receipt_date', page=1)



Basic information about electronic files coming into the FEC, posted as they are received.

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.file.number <- list(123) # array[integer] | Filing ID number
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- EfilingApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$EfileFilingsGet(var.api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=var.sort.hide.null, file.number=var.file.number, per.page=var.per.page, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.receipt.date** | **character**|  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **file.number** | list( **integer** )| Filing ID number | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **max.receipt.date** | **character**|  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-receipt_date&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**EFilingsPage**](EFilingsPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **EfileReportsHouseSenateGet**
> BaseF3FilingPage EfileReportsHouseSenateGet(api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=FALSE, file.number=var.file.number, per.page=20, max.receipt.date=var.max.receipt.date, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='-receipt_date', page=1)



 Key financial data reported periodically by committees as they are reported. This feed includes summary information from the the House F3 reports, the presidential F3p reports and the PAC and party F3x reports.  Generally, committees file reports on a quarterly or monthly basis, but some must also submit a report 12 days before primary elections. Therefore, during the primary season, the period covered by this file may be different for different committees. These totals also incorporate any changes made by committees, if any report covering the period is amended.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.file.number <- list(123) # array[integer] | Filing ID number
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- EfilingApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$EfileReportsHouseSenateGet(var.api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=var.sort.hide.null, file.number=var.file.number, per.page=var.per.page, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.receipt.date** | **character**|  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **file.number** | list( **integer** )| Filing ID number | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **max.receipt.date** | **character**|  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-receipt_date&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**BaseF3FilingPage**](BaseF3FilingPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **EfileReportsPacPartyGet**
> BaseF3XFilingPage EfileReportsPacPartyGet(api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=FALSE, file.number=var.file.number, per.page=20, max.receipt.date=var.max.receipt.date, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='-receipt_date', page=1)



 Key financial data reported periodically by committees as they are reported. This feed includes summary information from the the House F3 reports, the presidential F3p reports and the PAC and party F3x reports.  Generally, committees file reports on a quarterly or monthly basis, but some must also submit a report 12 days before primary elections. Therefore, during the primary season, the period covered by this file may be different for different committees. These totals also incorporate any changes made by committees, if any report covering the period is amended.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.file.number <- list(123) # array[integer] | Filing ID number
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- EfilingApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$EfileReportsPacPartyGet(var.api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=var.sort.hide.null, file.number=var.file.number, per.page=var.per.page, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.receipt.date** | **character**|  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **file.number** | list( **integer** )| Filing ID number | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **max.receipt.date** | **character**|  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-receipt_date&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**BaseF3XFilingPage**](BaseF3XFilingPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **EfileReportsPresidentialGet**
> BaseF3PFilingPage EfileReportsPresidentialGet(api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=FALSE, file.number=var.file.number, per.page=20, max.receipt.date=var.max.receipt.date, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='-receipt_date', page=1)



 Key financial data reported periodically by committees as they are reported. This feed includes summary information from the the House F3 reports, the presidential F3p reports and the PAC and party F3x reports.  Generally, committees file reports on a quarterly or monthly basis, but some must also submit a report 12 days before primary elections. Therefore, during the primary season, the period covered by this file may be different for different committees. These totals also incorporate any changes made by committees, if any report covering the period is amended.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.file.number <- list(123) # array[integer] | Filing ID number
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- EfilingApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$EfileReportsPresidentialGet(var.api.key, min.receipt.date=var.min.receipt.date, sort.hide.null=var.sort.hide.null, file.number=var.file.number, per.page=var.per.page, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.receipt.date** | **character**|  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **file.number** | list( **integer** )| Filing ID number | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **max.receipt.date** | **character**|  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-receipt_date&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**BaseF3PFilingPage**](BaseF3PFilingPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

