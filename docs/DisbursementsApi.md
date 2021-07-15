# DisbursementsApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SchedulesScheduleBByPurposeGet**](DisbursementsApi.md#SchedulesScheduleBByPurposeGet) | **GET** /schedules/schedule_b/by_purpose/ | 
[**SchedulesScheduleBByRecipientGet**](DisbursementsApi.md#SchedulesScheduleBByRecipientGet) | **GET** /schedules/schedule_b/by_recipient/ | 
[**SchedulesScheduleBByRecipientIdGet**](DisbursementsApi.md#SchedulesScheduleBByRecipientIdGet) | **GET** /schedules/schedule_b/by_recipient_id/ | 
[**SchedulesScheduleBEfileGet**](DisbursementsApi.md#SchedulesScheduleBEfileGet) | **GET** /schedules/schedule_b/efile/ | 
[**SchedulesScheduleBGet**](DisbursementsApi.md#SchedulesScheduleBGet) | **GET** /schedules/schedule_b/ | 
[**SchedulesScheduleBSubIdGet**](DisbursementsApi.md#SchedulesScheduleBSubIdGet) | **GET** /schedules/schedule_b/{sub_id}/ | 


# **SchedulesScheduleBByPurposeGet**
> ScheduleBByPurposePage SchedulesScheduleBByPurposeGet(api.key, sort.hide.null=FALSE, purpose=var.purpose, per.page=20, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='null', cycle=var.cycle, page=1)



 Schedule B disbursements aggregated by disbursement purpose category. To avoid double counting, memoed items are not included. Purpose is a combination of transaction codes, category codes and disbursement description. Inspect the `disbursement_purpose` sql function within the migrations for more details. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.purpose <- list("inner_example") # array[character] | Disbursement purpose category
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- DisbursementsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleBByPurposeGet(var.api.key, sort.hide.null=var.sort.hide.null, purpose=var.purpose, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **purpose** | list( **character** )| Disbursement purpose category | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleBByPurposePage**](ScheduleBByPurposePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleBByRecipientGet**
> ScheduleBByRecipientPage SchedulesScheduleBByRecipientGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, recipient.name=var.recipient.name, committee.id=var.committee.id, sort.null.only=FALSE, sort='null', cycle=var.cycle, page=1)



 Schedule B disbursements aggregated by recipient name. To avoid double counting, memoed items are not included. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.recipient.name <- list("inner_example") # array[character] | Name of the entity receiving the disbursement
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- DisbursementsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleBByRecipientGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, recipient.name=var.recipient.name, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **recipient.name** | list( **character** )| Name of the entity receiving the disbursement | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleBByRecipientPage**](ScheduleBByRecipientPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleBByRecipientIdGet**
> ScheduleBByRecipientIDPage SchedulesScheduleBByRecipientIdGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, committee.id=var.committee.id, recipient.id=var.recipient.id, sort='null', sort.null.only=FALSE, cycle=var.cycle, page=1)



 Schedule B disbursements aggregated by recipient committee ID, if applicable. To avoid double counting, memoed items are not included. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.recipient.id <- list("inner_example") # array[character] | The FEC identifier should be represented here if the entity receiving the disbursement is registered with the FEC.
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- DisbursementsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleBByRecipientIdGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, recipient.id=var.recipient.id, sort=var.sort, sort.null.only=var.sort.null.only, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **recipient.id** | list( **character** )| The FEC identifier should be represented here if the entity receiving the disbursement is registered with the FEC. | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleBByRecipientIDPage**](ScheduleBByRecipientIDPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleBEfileGet**
> ScheduleBEfilePage SchedulesScheduleBEfileGet(api.key, min.date=var.min.date, max.amount=var.max.amount, sort.hide.null=FALSE, max.date=var.max.date, per.page=20, image.number=var.image.number, recipient.state=var.recipient.state, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='-disbursement_date', page=1, recipient.city=var.recipient.city, min.amount=var.min.amount, disbursement.description=var.disbursement.description)



 Efiling endpoints provide real-time campaign finance data received from electronic filers. Efiling endpoints only contain the most recent four months of data and don't contain the processed and coded data that you can find on other endpoints. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.date <- 'min.date_example' # character | When sorting by `disbursement_date`, this is populated with the         `disbursement_date` of the last result. However, you will need to pass the index         of that last result to `last_index` to get the next page.
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.date <- 'max.date_example' # character | When sorting by `disbursement_date`, this is populated with the         `disbursement_date` of the last result. However, you will need to pass the index         of that last result to `last_index` to get the next page.
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.recipient.state <- list("inner_example") # array[character] | State of recipient
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-disbursement_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.recipient.city <- list("inner_example") # array[character] | City of recipient
var.min.amount <- 'min.amount_example' # character | Filter for all amounts less than a value.
var.disbursement.description <- list("inner_example") # array[character] | Description of disbursement

api.instance <- DisbursementsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleBEfileGet(var.api.key, min.date=var.min.date, max.amount=var.max.amount, sort.hide.null=var.sort.hide.null, max.date=var.max.date, per.page=var.per.page, image.number=var.image.number, recipient.state=var.recipient.state, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page, recipient.city=var.recipient.city, min.amount=var.min.amount, disbursement.description=var.disbursement.description)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.date** | **character**| When sorting by &#x60;disbursement_date&#x60;, this is populated with the         &#x60;disbursement_date&#x60; of the last result. However, you will need to pass the index         of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.date** | **character**| When sorting by &#x60;disbursement_date&#x60;, this is populated with the         &#x60;disbursement_date&#x60; of the last result. However, you will need to pass the index         of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **image.number** | list( **character** )| The image number of the page where the schedule item is reported | [optional] 
 **recipient.state** | list( **character** )| State of recipient | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-disbursement_date&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **recipient.city** | list( **character** )| City of recipient | [optional] 
 **min.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **disbursement.description** | list( **character** )| Description of disbursement | [optional] 

### Return type

[**ScheduleBEfilePage**](ScheduleBEfilePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleBGet**
> ScheduleBPage SchedulesScheduleBGet(api.key, last.disbursement.date=var.last.disbursement.date, max.image.number=var.max.image.number, min.date=var.min.date, max.amount=var.max.amount, per.page=20, line.number=var.line.number, recipient.state=var.recipient.state, recipient.name=var.recipient.name, committee.id=var.committee.id, sort='-disbursement_date', recipient.city=var.recipient.city, spender.committee.type=var.spender.committee.type, min.amount=var.min.amount, last.index=var.last.index, disbursement.description=var.disbursement.description, disbursement.purpose.category=var.disbursement.purpose.category, min.image.number=var.min.image.number, sort.hide.null=FALSE, last.disbursement.amount=var.last.disbursement.amount, max.date=var.max.date, image.number=var.image.number, recipient.committee.id=var.recipient.committee.id, sort.null.only=FALSE, spender.committee.designation=var.spender.committee.designation, two.year.transaction.period=var.two.year.transaction.period, spender.committee.org.type=var.spender.committee.org.type)



 Schedule B filings describe itemized disbursements. This data explains how committees and other filers spend their money. These figures are reported as part of forms F3, F3X and F3P.  The data is divided in two-year periods, called `two_year_transaction_period`, which is derived from the `report_year` submitted of the corresponding form. If no value is supplied, the results will default to the most recent two-year period that is named after the ending, even-numbered year.  Due to the large quantity of Schedule B filings, this endpoint is not paginated by page number. Instead, you can request the next page of results by adding the values in the `last_indexes` object from `pagination` to the URL of your last request. For example, when sorting by `disbursement_date`, you might receive a page of results with the following pagination information:  ``` pagination: {     pages: 965191,     per_page: 20,     count: 19303814,     last_indexes: {         last_index: \"230906248\",         last_disbursement_date: \"2014-07-04\"     } } ```  To fetch the next page of sorted results, append `last_index=230906248` and `last_disbursement_date=2014-07-04` to the URL.  We strongly advise paging through these results by using the sort indices (defaults to sort by disbursement date, e.g. `last_disbursement_date`), otherwise some resources may be unintentionally filtered out. This resource uses keyset pagination to improve query performance and these indices are required to properly page through this large dataset.  Note: because the Schedule B data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.last.disbursement.date <- 'last.disbursement.date_example' # character | When sorting by `disbursement_date`, this is populated with the `disbursement_date` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page.
var.max.image.number <- 'max.image.number_example' # character | 
var.min.date <- 'min.date_example' # character | Minimum date
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.line.number <- 'line.number_example' # character | Filter for form and line number using the following format: `FORM-LINENUMBER`.  For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
var.recipient.state <- list("inner_example") # array[character] | State of recipient
var.recipient.name <- list("inner_example") # array[character] | Name of the entity receiving the disbursement
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- '-disbursement_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.recipient.city <- list("inner_example") # array[character] | City of recipient
var.spender.committee.type <- list("") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.min.amount <- 'min.amount_example' # character | Filter for all amounts greater than a value.
var.last.index <- 56 # integer | Index of last result from previous page
var.disbursement.description <- list("inner_example") # array[character] | Description of disbursement
var.disbursement.purpose.category <- list("inner_example") # array[character] | Disbursement purpose category
var.min.image.number <- 'min.image.number_example' # character | 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.last.disbursement.amount <- 3.4 # numeric | When sorting by `disbursement_amount`, this is populated with the `disbursement_amount` of the last result.  However, you will need to pass the index of that last result to `last_index` to get the next page.
var.max.date <- 'max.date_example' # character | Maximum date
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.recipient.committee.id <- list("inner_example") # array[character] | The FEC identifier should be represented here if the contributor is registered with the FEC.
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.spender.committee.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.two.year.transaction.period <- list(123) # array[integer] |  This is a two-year period that is derived from the year a transaction took place in the Itemized Schedule A and Schedule B tables. In cases where we have the date of the transaction (contribution_receipt_date in schedules/schedule_a, disbursement_date in schedules/schedule_b) the two_year_transaction_period is named after the ending, even-numbered year. If we do not have the date  of the transaction, we fall back to using the report year (report_year in both tables) instead,  making the same cycle adjustment as necessary. If no transaction year is specified, the results default to the most current cycle. 
var.spender.committee.org.type <- list("") # array[character] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock 

api.instance <- DisbursementsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleBGet(var.api.key, last.disbursement.date=var.last.disbursement.date, max.image.number=var.max.image.number, min.date=var.min.date, max.amount=var.max.amount, per.page=var.per.page, line.number=var.line.number, recipient.state=var.recipient.state, recipient.name=var.recipient.name, committee.id=var.committee.id, sort=var.sort, recipient.city=var.recipient.city, spender.committee.type=var.spender.committee.type, min.amount=var.min.amount, last.index=var.last.index, disbursement.description=var.disbursement.description, disbursement.purpose.category=var.disbursement.purpose.category, min.image.number=var.min.image.number, sort.hide.null=var.sort.hide.null, last.disbursement.amount=var.last.disbursement.amount, max.date=var.max.date, image.number=var.image.number, recipient.committee.id=var.recipient.committee.id, sort.null.only=var.sort.null.only, spender.committee.designation=var.spender.committee.designation, two.year.transaction.period=var.two.year.transaction.period, spender.committee.org.type=var.spender.committee.org.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **last.disbursement.date** | **character**| When sorting by &#x60;disbursement_date&#x60;, this is populated with the &#x60;disbursement_date&#x60; of the last result. However, you will need to pass the index of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 
 **max.image.number** | **character**|  | [optional] 
 **min.date** | **character**| Minimum date | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **line.number** | **character**| Filter for form and line number using the following format: &#x60;FORM-LINENUMBER&#x60;.  For example an argument such as &#x60;F3X-16&#x60; would filter down to all entries from form &#x60;F3X&#x60; line number &#x60;16&#x60;. | [optional] 
 **recipient.state** | list( **character** )| State of recipient | [optional] 
 **recipient.name** | list( **character** )| Name of the entity receiving the disbursement | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-disbursement_date&#39;]
 **recipient.city** | list( **character** )| City of recipient | [optional] 
 **spender.committee.type** | Enum [, C, D, E, H, I, N, O, P, Q, S, U, V, W, X, Y, Z] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **min.amount** | **character**| Filter for all amounts greater than a value. | [optional] 
 **last.index** | **integer**| Index of last result from previous page | [optional] 
 **disbursement.description** | list( **character** )| Description of disbursement | [optional] 
 **disbursement.purpose.category** | list( **character** )| Disbursement purpose category | [optional] 
 **min.image.number** | **character**|  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **last.disbursement.amount** | **numeric**| When sorting by &#x60;disbursement_amount&#x60;, this is populated with the &#x60;disbursement_amount&#x60; of the last result.  However, you will need to pass the index of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 
 **max.date** | **character**| Maximum date | [optional] 
 **image.number** | list( **character** )| The image number of the page where the schedule item is reported | [optional] 
 **recipient.committee.id** | list( **character** )| The FEC identifier should be represented here if the contributor is registered with the FEC. | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **spender.committee.designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **two.year.transaction.period** | list( **integer** )|  This is a two-year period that is derived from the year a transaction took place in the Itemized Schedule A and Schedule B tables. In cases where we have the date of the transaction (contribution_receipt_date in schedules/schedule_a, disbursement_date in schedules/schedule_b) the two_year_transaction_period is named after the ending, even-numbered year. If we do not have the date  of the transaction, we fall back to using the report year (report_year in both tables) instead,  making the same cycle adjustment as necessary. If no transaction year is specified, the results default to the most current cycle.  | [optional] 
 **spender.committee.org.type** | Enum [, C, L, M, T, V, W] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 

### Return type

[**ScheduleBPage**](ScheduleBPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleBSubIdGet**
> ScheduleBPage SchedulesScheduleBSubIdGet(api.key, sub.id, last.disbursement.date=var.last.disbursement.date, max.image.number=var.max.image.number, min.date=var.min.date, max.amount=var.max.amount, per.page=20, line.number=var.line.number, recipient.state=var.recipient.state, recipient.name=var.recipient.name, committee.id=var.committee.id, sort='-disbursement_date', recipient.city=var.recipient.city, spender.committee.type=var.spender.committee.type, min.amount=var.min.amount, last.index=var.last.index, disbursement.description=var.disbursement.description, disbursement.purpose.category=var.disbursement.purpose.category, min.image.number=var.min.image.number, sort.hide.null=FALSE, last.disbursement.amount=var.last.disbursement.amount, max.date=var.max.date, image.number=var.image.number, recipient.committee.id=var.recipient.committee.id, sort.null.only=FALSE, spender.committee.designation=var.spender.committee.designation, two.year.transaction.period=var.two.year.transaction.period, spender.committee.org.type=var.spender.committee.org.type)



 Schedule B filings describe itemized disbursements. This data explains how committees and other filers spend their money. These figures are reported as part of forms F3, F3X and F3P.  The data is divided in two-year periods, called `two_year_transaction_period`, which is derived from the `report_year` submitted of the corresponding form. If no value is supplied, the results will default to the most recent two-year period that is named after the ending, even-numbered year.  Due to the large quantity of Schedule B filings, this endpoint is not paginated by page number. Instead, you can request the next page of results by adding the values in the `last_indexes` object from `pagination` to the URL of your last request. For example, when sorting by `disbursement_date`, you might receive a page of results with the following pagination information:  ``` pagination: {     pages: 965191,     per_page: 20,     count: 19303814,     last_indexes: {         last_index: \"230906248\",         last_disbursement_date: \"2014-07-04\"     } } ```  To fetch the next page of sorted results, append `last_index=230906248` and `last_disbursement_date=2014-07-04` to the URL.  We strongly advise paging through these results by using the sort indices (defaults to sort by disbursement date, e.g. `last_disbursement_date`), otherwise some resources may be unintentionally filtered out. This resource uses keyset pagination to improve query performance and these indices are required to properly page through this large dataset.  Note: because the Schedule B data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sub.id <- 'sub.id_example' # character | 
var.last.disbursement.date <- 'last.disbursement.date_example' # character | When sorting by `disbursement_date`, this is populated with the `disbursement_date` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page.
var.max.image.number <- 'max.image.number_example' # character | 
var.min.date <- 'min.date_example' # character | Minimum date
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.line.number <- 'line.number_example' # character | Filter for form and line number using the following format: `FORM-LINENUMBER`.  For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
var.recipient.state <- list("inner_example") # array[character] | State of recipient
var.recipient.name <- list("inner_example") # array[character] | Name of the entity receiving the disbursement
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- '-disbursement_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.recipient.city <- list("inner_example") # array[character] | City of recipient
var.spender.committee.type <- list("") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.min.amount <- 'min.amount_example' # character | Filter for all amounts greater than a value.
var.last.index <- 56 # integer | Index of last result from previous page
var.disbursement.description <- list("inner_example") # array[character] | Description of disbursement
var.disbursement.purpose.category <- list("inner_example") # array[character] | Disbursement purpose category
var.min.image.number <- 'min.image.number_example' # character | 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.last.disbursement.amount <- 3.4 # numeric | When sorting by `disbursement_amount`, this is populated with the `disbursement_amount` of the last result.  However, you will need to pass the index of that last result to `last_index` to get the next page.
var.max.date <- 'max.date_example' # character | Maximum date
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.recipient.committee.id <- list("inner_example") # array[character] | The FEC identifier should be represented here if the contributor is registered with the FEC.
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.spender.committee.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.two.year.transaction.period <- list(123) # array[integer] |  This is a two-year period that is derived from the year a transaction took place in the Itemized Schedule A and Schedule B tables. In cases where we have the date of the transaction (contribution_receipt_date in schedules/schedule_a, disbursement_date in schedules/schedule_b) the two_year_transaction_period is named after the ending, even-numbered year. If we do not have the date  of the transaction, we fall back to using the report year (report_year in both tables) instead,  making the same cycle adjustment as necessary. If no transaction year is specified, the results default to the most current cycle. 
var.spender.committee.org.type <- list("") # array[character] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock 

api.instance <- DisbursementsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleBSubIdGet(var.api.key, var.sub.id, last.disbursement.date=var.last.disbursement.date, max.image.number=var.max.image.number, min.date=var.min.date, max.amount=var.max.amount, per.page=var.per.page, line.number=var.line.number, recipient.state=var.recipient.state, recipient.name=var.recipient.name, committee.id=var.committee.id, sort=var.sort, recipient.city=var.recipient.city, spender.committee.type=var.spender.committee.type, min.amount=var.min.amount, last.index=var.last.index, disbursement.description=var.disbursement.description, disbursement.purpose.category=var.disbursement.purpose.category, min.image.number=var.min.image.number, sort.hide.null=var.sort.hide.null, last.disbursement.amount=var.last.disbursement.amount, max.date=var.max.date, image.number=var.image.number, recipient.committee.id=var.recipient.committee.id, sort.null.only=var.sort.null.only, spender.committee.designation=var.spender.committee.designation, two.year.transaction.period=var.two.year.transaction.period, spender.committee.org.type=var.spender.committee.org.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sub.id** | **character**|  | 
 **last.disbursement.date** | **character**| When sorting by &#x60;disbursement_date&#x60;, this is populated with the &#x60;disbursement_date&#x60; of the last result. However, you will need to pass the index of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 
 **max.image.number** | **character**|  | [optional] 
 **min.date** | **character**| Minimum date | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **line.number** | **character**| Filter for form and line number using the following format: &#x60;FORM-LINENUMBER&#x60;.  For example an argument such as &#x60;F3X-16&#x60; would filter down to all entries from form &#x60;F3X&#x60; line number &#x60;16&#x60;. | [optional] 
 **recipient.state** | list( **character** )| State of recipient | [optional] 
 **recipient.name** | list( **character** )| Name of the entity receiving the disbursement | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-disbursement_date&#39;]
 **recipient.city** | list( **character** )| City of recipient | [optional] 
 **spender.committee.type** | Enum [, C, D, E, H, I, N, O, P, Q, S, U, V, W, X, Y, Z] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **min.amount** | **character**| Filter for all amounts greater than a value. | [optional] 
 **last.index** | **integer**| Index of last result from previous page | [optional] 
 **disbursement.description** | list( **character** )| Description of disbursement | [optional] 
 **disbursement.purpose.category** | list( **character** )| Disbursement purpose category | [optional] 
 **min.image.number** | **character**|  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **last.disbursement.amount** | **numeric**| When sorting by &#x60;disbursement_amount&#x60;, this is populated with the &#x60;disbursement_amount&#x60; of the last result.  However, you will need to pass the index of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 
 **max.date** | **character**| Maximum date | [optional] 
 **image.number** | list( **character** )| The image number of the page where the schedule item is reported | [optional] 
 **recipient.committee.id** | list( **character** )| The FEC identifier should be represented here if the contributor is registered with the FEC. | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **spender.committee.designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **two.year.transaction.period** | list( **integer** )|  This is a two-year period that is derived from the year a transaction took place in the Itemized Schedule A and Schedule B tables. In cases where we have the date of the transaction (contribution_receipt_date in schedules/schedule_a, disbursement_date in schedules/schedule_b) the two_year_transaction_period is named after the ending, even-numbered year. If we do not have the date  of the transaction, we fall back to using the report year (report_year in both tables) instead,  making the same cycle adjustment as necessary. If no transaction year is specified, the results default to the most current cycle.  | [optional] 
 **spender.committee.org.type** | Enum [, C, L, M, T, V, W] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 

### Return type

[**ScheduleBPage**](ScheduleBPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

