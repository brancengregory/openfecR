# CommunicationCostApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CommunicationCostsAggregatesGet**](CommunicationCostApi.md#CommunicationCostsAggregatesGet) | **GET** /communication_costs/aggregates/ | 
[**CommunicationCostsByCandidateGet**](CommunicationCostApi.md#CommunicationCostsByCandidateGet) | **GET** /communication_costs/by_candidate/ | 
[**CommunicationCostsGet**](CommunicationCostApi.md#CommunicationCostsGet) | **GET** /communication_costs/ | 
[**CommunicationCostsTotalsByCandidateGet**](CommunicationCostApi.md#CommunicationCostsTotalsByCandidateGet) | **GET** /communication_costs/totals/by_candidate/ | 


# **CommunicationCostsAggregatesGet**
> CommunicationCostByCandidatePage CommunicationCostsAggregatesGet(api.key, support.oppose.indicator='null', sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, candidate.id=var.candidate.id, committee.id=var.committee.id, sort='null', sort.null.only=FALSE, cycle=var.cycle, page=1)



Communication cost aggregated by candidate ID and committee ID.

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.support.oppose.indicator <- 'null' # character | Support or opposition
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommunicationCostApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommunicationCostsAggregatesGet(var.api.key, support.oppose.indicator=var.support.oppose.indicator, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, committee.id=var.committee.id, sort=var.sort, sort.null.only=var.sort.null.only, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **support.oppose.indicator** | Enum [S, O] | Support or opposition | [optional] [default to &#39;null&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommunicationCostByCandidatePage**](CommunicationCostByCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommunicationCostsByCandidateGet**
> CommunicationCostByCandidatePage CommunicationCostsByCandidateGet(api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, district=var.district, candidate.id=var.candidate.id, sort='null', sort.null.only=FALSE, office=var.office, state=var.state, cycle=var.cycle, support.oppose='null', page=1)



Communication cost aggregated by candidate ID and committee ID.

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- 'district_example' # character | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.office <- 'office_example' # character | Federal office candidate runs for: H, S or P
var.state <- 'state_example' # character | US state or territory where a candidate runs for office
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.support.oppose <- 'null' # character | Support or opposition
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommunicationCostApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommunicationCostsByCandidateGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, district=var.district, candidate.id=var.candidate.id, sort=var.sort, sort.null.only=var.sort.null.only, office=var.office, state=var.state, cycle=var.cycle, support.oppose=var.support.oppose, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | **character**| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **office** | Enum [house, senate, president] | Federal office candidate runs for: H, S or P | [optional] 
 **state** | **character**| US state or territory where a candidate runs for office | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **support.oppose** | Enum [S, O] | Support or opposition | [optional] [default to &#39;null&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommunicationCostByCandidatePage**](CommunicationCostByCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommunicationCostsGet**
> CommunicationCostPage CommunicationCostsGet(api.key, min.date=var.min.date, max.image.number=var.max.image.number, support.oppose.indicator=var.support.oppose.indicator, max.amount=var.max.amount, per.page=20, line.number=var.line.number, committee.id=var.committee.id, sort='null', min.amount=var.min.amount, min.image.number=var.min.image.number, sort.hide.null=FALSE, max.date=var.max.date, image.number=var.image.number, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, page=1)



 52 U.S.C. 30118 allows \"communications by a corporation to its stockholders and executive or administrative personnel and their families or by a labor organization to its members and their families on any subject,\" including the express advocacy of the election or defeat of any Federal candidate.  The costs of such communications must be reported to the Federal Election Commission under certain circumstances. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.date <- 'min.date_example' # character | Minimum date
var.max.image.number <- 'max.image.number_example' # character | 
var.support.oppose.indicator <- list("S") # array[character] | Support or opposition
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.line.number <- 'line.number_example' # character | Filter for form and line number using the following format: `FORM-LINENUMBER`.  For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.min.amount <- 'min.amount_example' # character | Filter for all amounts greater than a value.
var.min.image.number <- 'min.image.number_example' # character | 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.date <- 'max.date_example' # character | Maximum date
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommunicationCostApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommunicationCostsGet(var.api.key, min.date=var.min.date, max.image.number=var.max.image.number, support.oppose.indicator=var.support.oppose.indicator, max.amount=var.max.amount, per.page=var.per.page, line.number=var.line.number, committee.id=var.committee.id, sort=var.sort, min.amount=var.min.amount, min.image.number=var.min.image.number, sort.hide.null=var.sort.hide.null, max.date=var.max.date, image.number=var.image.number, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.date** | **character**| Minimum date | [optional] 
 **max.image.number** | **character**|  | [optional] 
 **support.oppose.indicator** | Enum [S, O] | Support or opposition | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **line.number** | **character**| Filter for form and line number using the following format: &#x60;FORM-LINENUMBER&#x60;.  For example an argument such as &#x60;F3X-16&#x60; would filter down to all entries from form &#x60;F3X&#x60; line number &#x60;16&#x60;. | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
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

[**CommunicationCostPage**](CommunicationCostPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommunicationCostsTotalsByCandidateGet**
> CCTotalsByCandidatePage CommunicationCostsTotalsByCandidateGet(api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, sort='null', cycle=var.cycle, page=1)



 Total communications costs aggregated across committees on supported or opposed candidates by cycle or candidate election year. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommunicationCostApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommunicationCostsTotalsByCandidateGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, sort=var.sort, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CCTotalsByCandidatePage**](CCTotalsByCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

