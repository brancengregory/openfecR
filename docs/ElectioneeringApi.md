# ElectioneeringApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ElectioneeringAggregatesGet**](ElectioneeringApi.md#ElectioneeringAggregatesGet) | **GET** /electioneering/aggregates/ | 
[**ElectioneeringByCandidateGet**](ElectioneeringApi.md#ElectioneeringByCandidateGet) | **GET** /electioneering/by_candidate/ | 
[**ElectioneeringGet**](ElectioneeringApi.md#ElectioneeringGet) | **GET** /electioneering/ | 
[**ElectioneeringTotalsByCandidateGet**](ElectioneeringApi.md#ElectioneeringTotalsByCandidateGet) | **GET** /electioneering/totals/by_candidate/ | 


# **ElectioneeringAggregatesGet**
> ElectioneeringByCandidatePage ElectioneeringAggregatesGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, committee.id=var.committee.id, candidate.id=var.candidate.id, sort='null', sort.null.only=FALSE, cycle=var.cycle, page=1)



Electioneering communications costs aggregates

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ElectioneeringApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ElectioneeringAggregatesGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, candidate.id=var.candidate.id, sort=var.sort, sort.null.only=var.sort.null.only, cycle=var.cycle, page=var.page)
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
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ElectioneeringByCandidatePage**](ElectioneeringByCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **ElectioneeringByCandidateGet**
> ElectioneeringByCandidatePage ElectioneeringByCandidateGet(api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, district=var.district, candidate.id=var.candidate.id, sort='null', sort.null.only=FALSE, office=var.office, state=var.state, cycle=var.cycle, page=1)



Electioneering costs aggregated by candidate

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
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ElectioneeringApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ElectioneeringByCandidateGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, district=var.district, candidate.id=var.candidate.id, sort=var.sort, sort.null.only=var.sort.null.only, office=var.office, state=var.state, cycle=var.cycle, page=var.page)
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
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ElectioneeringByCandidatePage**](ElectioneeringByCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **ElectioneeringGet**
> ElectioneeringPage ElectioneeringGet(api.key, min.date=var.min.date, max.amount=var.max.amount, sort.hide.null=FALSE, max.date=var.max.date, per.page=20, sort.nulls.last=FALSE, candidate.id=var.candidate.id, committee.id=var.committee.id, description=var.description, sort='null', sort.null.only=FALSE, page=1, min.amount=var.min.amount, last.index=var.last.index, report.year=var.report.year)



 An electioneering communication is any broadcast, cable or satellite communication that fulfills each of the following conditions:  _The communication refers to a clearly identified federal candidate._  _The communication is publicly distributed by a television station, radio station, cable television system or satellite system for a fee._  _The communication is distributed within 60 days prior to a general election or 30 days prior to a primary election to federal office._ 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.date <- 'min.date_example' # character | Minimum disbursement date
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.date <- 'max.date_example' # character | Maximum disbursement date
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.description <- 'description_example' # character | 
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.page <- 1 # integer | For paginating through results, starting at page 1
var.min.amount <- 'min.amount_example' # character | Filter for all amounts greater than a value.
var.last.index <- 56 # integer | Index of last result from previous page
var.report.year <- list(123) # array[integer] |  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date. 

api.instance <- ElectioneeringApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ElectioneeringGet(var.api.key, min.date=var.min.date, max.amount=var.max.amount, sort.hide.null=var.sort.hide.null, max.date=var.max.date, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, committee.id=var.committee.id, description=var.description, sort=var.sort, sort.null.only=var.sort.null.only, page=var.page, min.amount=var.min.amount, last.index=var.last.index, report.year=var.report.year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.date** | **character**| Minimum disbursement date | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.date** | **character**| Maximum disbursement date | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **description** | **character**|  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **min.amount** | **character**| Filter for all amounts greater than a value. | [optional] 
 **last.index** | **integer**| Index of last result from previous page | [optional] 
 **report.year** | list( **integer** )|  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date.  | [optional] 

### Return type

[**ElectioneeringPage**](ElectioneeringPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **ElectioneeringTotalsByCandidateGet**
> ECTotalsByCandidatePage ElectioneeringTotalsByCandidateGet(api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, sort='null', cycle=var.cycle, page=1)



 Total electioneering communications spent on candidates by cycle or candidate election year 

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

api.instance <- ElectioneeringApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ElectioneeringTotalsByCandidateGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, sort=var.sort, cycle=var.cycle, page=var.page)
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

[**ECTotalsByCandidatePage**](ECTotalsByCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

