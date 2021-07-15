# ReceiptsApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SchedulesScheduleAByEmployerGet**](ReceiptsApi.md#SchedulesScheduleAByEmployerGet) | **GET** /schedules/schedule_a/by_employer/ | 
[**SchedulesScheduleAByOccupationGet**](ReceiptsApi.md#SchedulesScheduleAByOccupationGet) | **GET** /schedules/schedule_a/by_occupation/ | 
[**SchedulesScheduleABySizeByCandidateGet**](ReceiptsApi.md#SchedulesScheduleABySizeByCandidateGet) | **GET** /schedules/schedule_a/by_size/by_candidate/ | 
[**SchedulesScheduleABySizeGet**](ReceiptsApi.md#SchedulesScheduleABySizeGet) | **GET** /schedules/schedule_a/by_size/ | 
[**SchedulesScheduleAByStateByCandidateGet**](ReceiptsApi.md#SchedulesScheduleAByStateByCandidateGet) | **GET** /schedules/schedule_a/by_state/by_candidate/ | 
[**SchedulesScheduleAByStateByCandidateTotalsGet**](ReceiptsApi.md#SchedulesScheduleAByStateByCandidateTotalsGet) | **GET** /schedules/schedule_a/by_state/by_candidate/totals/ | 
[**SchedulesScheduleAByStateGet**](ReceiptsApi.md#SchedulesScheduleAByStateGet) | **GET** /schedules/schedule_a/by_state/ | 
[**SchedulesScheduleAByStateTotalsGet**](ReceiptsApi.md#SchedulesScheduleAByStateTotalsGet) | **GET** /schedules/schedule_a/by_state/totals/ | 
[**SchedulesScheduleAByZipGet**](ReceiptsApi.md#SchedulesScheduleAByZipGet) | **GET** /schedules/schedule_a/by_zip/ | 
[**SchedulesScheduleAEfileGet**](ReceiptsApi.md#SchedulesScheduleAEfileGet) | **GET** /schedules/schedule_a/efile/ | 
[**SchedulesScheduleAGet**](ReceiptsApi.md#SchedulesScheduleAGet) | **GET** /schedules/schedule_a/ | 
[**SchedulesScheduleASubIdGet**](ReceiptsApi.md#SchedulesScheduleASubIdGet) | **GET** /schedules/schedule_a/{sub_id}/ | 


# **SchedulesScheduleAByEmployerGet**
> ScheduleAByEmployerPage SchedulesScheduleAByEmployerGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='null', page=1, cycle=var.cycle, employer=var.employer)



 This endpoint provides itemized individual contributions received by a committee, aggregated by the contributor’s employer name. If you are interested in our “is_individual” methodology, review the [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology). Unitemized individual contributions are not included. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.employer <- list("inner_example") # array[character] | Employer of contributor as reported on the committee's filing

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleAByEmployerGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page, cycle=var.cycle, employer=var.employer)
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
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **employer** | list( **character** )| Employer of contributor as reported on the committee&#39;s filing | [optional] 

### Return type

[**ScheduleAByEmployerPage**](ScheduleAByEmployerPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleAByOccupationGet**
> ScheduleAByOccupationPage SchedulesScheduleAByOccupationGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, occupation=var.occupation, committee.id=var.committee.id, sort.null.only=FALSE, sort='null', cycle=var.cycle, page=1)



 This endpoint provides itemized individual contributions received by a committee, aggregated by the contributor’s occupation. If you are interested in our “is_individual” methodology, review the [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology). Unitemized individual contributions are not included. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.occupation <- list("inner_example") # array[character] | Occupation of contributor as reported on the committee's filing
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleAByOccupationGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, occupation=var.occupation, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **occupation** | list( **character** )| Occupation of contributor as reported on the committee&#39;s filing | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleAByOccupationPage**](ScheduleAByOccupationPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleABySizeByCandidateGet**
> ScheduleABySizeCandidatePage SchedulesScheduleABySizeByCandidateGet(candidate.id, cycle, api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='null', page=1)



 This endpoint provides itemized individual contributions received by a committee, aggregated by size of contribution and candidate. If you are interested in our “is_individual” methodology, review the [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology). Unitemized individual contributions are not included. 

### Example
```R
library(openapi)

var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleABySizeByCandidateGet(var.candidate.id, var.cycle, var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | 
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleABySizeCandidatePage**](ScheduleABySizeCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleABySizeGet**
> ScheduleABySizePage SchedulesScheduleABySizeGet(api.key, sort.hide.null=FALSE, size=var.size, per.page=20, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='null', cycle=var.cycle, page=1)



 This endpoint provides individual contributions received by a committee, aggregated by size:  ```  - $200 and under  - $200.01 - $499.99  - $500 - $999.99  - $1000 - $1999.99  - $2000 + ```  The $200.00 and under category includes contributions of $200 or less combined with unitemized individual contributions. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.size <- list(123) # array[integer] |  The total all contributions in the following ranges: ```   -0    $200 and under   -200  $200.01 - $499.99   -500  $500 - $999.99   -1000 $1000 - $1999.99   -2000 $2000 + ``` Unitemized contributions are included in the `0` category. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleABySizeGet(var.api.key, sort.hide.null=var.sort.hide.null, size=var.size, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **size** | Enum [0, 200, 500, 1000, 2000] |  The total all contributions in the following ranges: &#x60;&#x60;&#x60;   -0    $200 and under   -200  $200.01 - $499.99   -500  $500 - $999.99   -1000 $1000 - $1999.99   -2000 $2000 + &#x60;&#x60;&#x60; Unitemized contributions are included in the &#x60;0&#x60; category.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleABySizePage**](ScheduleABySizePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleAByStateByCandidateGet**
> ScheduleAByStateCandidatePage SchedulesScheduleAByStateByCandidateGet(candidate.id, cycle, api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='null', page=1)



 This endpoint provides itemized individual contributions received by a committee, aggregated by contributor’s state and candidate. If you are interested in our “is_individual” methodology, review the [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology). Unitemized individual contributions are not included. 

### Example
```R
library(openapi)

var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleAByStateByCandidateGet(var.candidate.id, var.cycle, var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | 
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleAByStateCandidatePage**](ScheduleAByStateCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleAByStateByCandidateTotalsGet**
> ScheduleAByStateCandidatePage SchedulesScheduleAByStateByCandidateTotalsGet(candidate.id, cycle, api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='null', page=1)



 Itemized individual contributions aggregated by contributor’s state, candidate, committee type and cycle. If you are interested in our “is_individual” methodology, review the [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology). Unitemized individual contributions are not included.  

### Example
```R
library(openapi)

var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleAByStateByCandidateTotalsGet(var.candidate.id, var.cycle, var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | 
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleAByStateCandidatePage**](ScheduleAByStateCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleAByStateGet**
> ScheduleAByStatePage SchedulesScheduleAByStateGet(api.key, hide.null=FALSE, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='-total', state=var.state, cycle=var.cycle, page=1)



 This endpoint provides itemized individual contributions received by a committee, aggregated by the contributor’s state. If you are interested in our “is_individual” methodology, review the [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology). Unitemized individual contributions are not included. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.hide.null <- FALSE # character | Exclude values with missing state
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-total' # character | Provide a field to sort by. Use `-` for descending order. 
var.state <- list("inner_example") # array[character] | State of contributor
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleAByStateGet(var.api.key, hide.null=var.hide.null, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, state=var.state, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **hide.null** | **character**| Exclude values with missing state | [optional] [default to FALSE]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-total&#39;]
 **state** | list( **character** )| State of contributor | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleAByStatePage**](ScheduleAByStatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleAByStateTotalsGet**
> ScheduleAByStateRecipientTotalsPage SchedulesScheduleAByStateTotalsGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, sort.null.only=FALSE, committee.type=var.committee.type, sort='cycle', state=var.state, cycle=var.cycle, page=1)



 This endpoint provides itemized individual contributions received by a committee, aggregated by contributor’s state, committee type and cycle. If you are interested in our “is_individual” methodology, review the [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology). Unitemized individual contributions are not included. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.committee.type <- list("inner_example") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account         - all All Committee Types         - all_candidates All Candidate Committee Types (H, S, P)         - all_pacs All PAC Committee Types (N, O, Q, V, W) 
var.sort <- 'cycle' # character | Provide a field to sort by. Use `-` for descending order. 
var.state <- list("inner_example") # array[character] | US state or territory
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleAByStateTotalsGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, committee.type=var.committee.type, sort=var.sort, state=var.state, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **committee.type** | list( **character** )| The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account         - all All Committee Types         - all_candidates All Candidate Committee Types (H, S, P)         - all_pacs All PAC Committee Types (N, O, Q, V, W)  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;cycle&#39;]
 **state** | list( **character** )| US state or territory | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleAByStateRecipientTotalsPage**](ScheduleAByStateRecipientTotalsPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleAByZipGet**
> ScheduleAByZipPage SchedulesScheduleAByZipGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, committee.id=var.committee.id, sort.null.only=FALSE, sort='null', zip=var.zip, state=var.state, cycle=var.cycle, page=1)



 This endpoint provides itemized individual contributions received by a committee, aggregated by the contributor’s ZIP code. If you are interested in our “is_individual” methodology, review the [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology). Unitemized individual contributions are not included. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.zip <- list("inner_example") # array[character] | Zip code of contributor
var.state <- list("inner_example") # array[character] | State of contributor
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleAByZipGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, committee.id=var.committee.id, sort.null.only=var.sort.null.only, sort=var.sort, zip=var.zip, state=var.state, cycle=var.cycle, page=var.page)
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
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **zip** | list( **character** )| Zip code of contributor | [optional] 
 **state** | list( **character** )| State of contributor | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleAByZipPage**](ScheduleAByZipPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleAEfileGet**
> ScheduleAEfilePage SchedulesScheduleAEfileGet(api.key, min.date=var.min.date, max.image.number=var.max.image.number, max.amount=var.max.amount, per.page=20, line.number=var.line.number, contributor.state=var.contributor.state, committee.id=var.committee.id, contributor.city=var.contributor.city, sort='-contribution_receipt_date', contributor.name=var.contributor.name, min.amount=var.min.amount, contributor.occupation=var.contributor.occupation, min.image.number=var.min.image.number, sort.hide.null=FALSE, max.date=var.max.date, image.number=var.image.number, sort.nulls.last=FALSE, contributor.employer=var.contributor.employer, sort.null.only=FALSE, page=1)



 Efiling endpoints provide real-time campaign finance data received from electronic filers. Efiling endpoints only contain the most recent four months of data and don't contain the processed and coded data that you can find on other endpoints. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.date <- 'min.date_example' # character | Minimum date
var.max.image.number <- 'max.image.number_example' # character | 
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.line.number <- 'line.number_example' # character | Filter for form and line number using the following format: `FORM-LINENUMBER`.  For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
var.contributor.state <- list("inner_example") # array[character] | State of contributor
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.contributor.city <- list("inner_example") # array[character] | City of contributor
var.sort <- '-contribution_receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.contributor.name <- list("inner_example") # array[character] | Name of contributor
var.min.amount <- 'min.amount_example' # character | Filter for all amounts greater than a value.
var.contributor.occupation <- list("inner_example") # array[character] | Occupation of contributor, filers need to make an effort to gather this information
var.min.image.number <- 'min.image.number_example' # character | 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.date <- 'max.date_example' # character | Maximum date
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.contributor.employer <- list("inner_example") # array[character] | Employer of contributor, filers need to make an effort to gather this information
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleAEfileGet(var.api.key, min.date=var.min.date, max.image.number=var.max.image.number, max.amount=var.max.amount, per.page=var.per.page, line.number=var.line.number, contributor.state=var.contributor.state, committee.id=var.committee.id, contributor.city=var.contributor.city, sort=var.sort, contributor.name=var.contributor.name, min.amount=var.min.amount, contributor.occupation=var.contributor.occupation, min.image.number=var.min.image.number, sort.hide.null=var.sort.hide.null, max.date=var.max.date, image.number=var.image.number, sort.nulls.last=var.sort.nulls.last, contributor.employer=var.contributor.employer, sort.null.only=var.sort.null.only, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.date** | **character**| Minimum date | [optional] 
 **max.image.number** | **character**|  | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **line.number** | **character**| Filter for form and line number using the following format: &#x60;FORM-LINENUMBER&#x60;.  For example an argument such as &#x60;F3X-16&#x60; would filter down to all entries from form &#x60;F3X&#x60; line number &#x60;16&#x60;. | [optional] 
 **contributor.state** | list( **character** )| State of contributor | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **contributor.city** | list( **character** )| City of contributor | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-contribution_receipt_date&#39;]
 **contributor.name** | list( **character** )| Name of contributor | [optional] 
 **min.amount** | **character**| Filter for all amounts greater than a value. | [optional] 
 **contributor.occupation** | list( **character** )| Occupation of contributor, filers need to make an effort to gather this information | [optional] 
 **min.image.number** | **character**|  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.date** | **character**| Maximum date | [optional] 
 **image.number** | list( **character** )| The image number of the page where the schedule item is reported | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **contributor.employer** | list( **character** )| Employer of contributor, filers need to make an effort to gather this information | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleAEfilePage**](ScheduleAEfilePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleAGet**
> ScheduleAPage SchedulesScheduleAGet(api.key, last.contribution.receipt.date=var.last.contribution.receipt.date, min.date=var.min.date, max.image.number=var.max.image.number, recipient.committee.org.type=var.recipient.committee.org.type, max.amount=var.max.amount, recipient.committee.designation=var.recipient.committee.designation, per.page=20, line.number=var.line.number, contributor.state=var.contributor.state, contributor.id=var.contributor.id, committee.id=var.committee.id, contributor.city=var.contributor.city, recipient.committee.type=var.recipient.committee.type, sort='-contribution_receipt_date', contributor.name=var.contributor.name, contributor.zip=var.contributor.zip, min.amount=var.min.amount, last.index=var.last.index, contributor.type=var.contributor.type, contributor.occupation=var.contributor.occupation, min.image.number=var.min.image.number, is.individual=FALSE, min.load.date=var.min.load.date, sort.hide.null=FALSE, max.date=var.max.date, image.number=var.image.number, contributor.employer=var.contributor.employer, sort.null.only=FALSE, two.year.transaction.period=var.two.year.transaction.period, max.load.date=var.max.load.date, last.contribution.receipt.amount=var.last.contribution.receipt.amount)



 This description is for both ​`/schedules​/schedule_a​/` and ​ `/schedules​/schedule_a​/{sub_id}​/`.  This endpoint provides itemized receipts. Schedule A records describe itemized receipts, including contributions from individuals. If you are interested in contributions from an individual, use the `/schedules/schedule_a/` endpoint. For a more complete description of all Schedule A records visit [About receipts data](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/about-receipts-data/). If you are interested in our \"is_individual\" methodology visit our [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology/).  ​The `/schedules​/schedule_a​/` endpoint is not paginated by page number. This endpoint uses keyset pagination to improve query performance and these indices are required to properly page through this large dataset. To request the next page, you should append the values found in the `last_indexes` object from pagination to the URL of your last request as additional parameters.  For example, when sorting by `contribution_receipt_date`, you might receive a page of results with the two scenarios of following pagination information:  case #1: ``` pagination: {     pages: 2152643,     per_page: 20,     count: 43052850,     last_indexes: {         last_index: \"230880619\",         last_contribution_receipt_date: \"2014-01-01\"     } } ``` <br/> case #2 (results which include contribution_receipt_date = NULL):  ``` pagination: {     pages: 2152644,     per_page: 20,     count: 43052850,     last_indexes: {         last_index: \"230880639\",         sort_null_only: True     } } ``` To fetch the next page of sorted results, append `last_index=230880619` and `last_contribution_receipt_date=2014-01-01` to the URL and when reaching `contribution_receipt_date=NULL`, append `last_index=230880639` and `sort_null_only=True`. We strongly advise paging through these results using sort indices. The default sort is acending by `contribution_receipt_date` (`deprecated`, will be descending). If you do not page using sort indices, some transactions may be unintentionally filtered out.  Calls to ​`/schedules​/schedule_a​/` may return many records. For large result sets, the record counts found in the pagination object are approximate; you will need to page through the records until no records are returned.  To avoid throwing the \"out of range\" exception on the last page, one recommandation is to use total count and `per_page` to control the traverse loop of results.  ​The `/schedules​/schedule_a​/{sub_id}​/` endpoint returns a single transaction, but it does include a pagination object class. Please ignore the information in that object class.  

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.last.contribution.receipt.date <- 'last.contribution.receipt.date_example' # character | When sorting by `contribution_receipt_date`, this is populated with the         `contribution_receipt_date` of the last result. However, you will need to pass the index         of that last result to `last_index` to get the next page.
var.min.date <- 'min.date_example' # character | Minimum date
var.max.image.number <- 'max.image.number_example' # character | 
var.recipient.committee.org.type <- list("") # array[character] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock 
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.recipient.committee.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.line.number <- 'line.number_example' # character | Filter for form and line number using the following format: `FORM-LINENUMBER`.  For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
var.contributor.state <- list("inner_example") # array[character] | State of contributor
var.contributor.id <- list("inner_example") # array[character] | The FEC identifier should be represented here if the contributor is registered with the FEC.
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.contributor.city <- list("inner_example") # array[character] | City of contributor
var.recipient.committee.type <- list("") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.sort <- '-contribution_receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.contributor.name <- list("inner_example") # array[character] | Name of contributor
var.contributor.zip <- list("inner_example") # array[character] | Zip code of contributor
var.min.amount <- 'min.amount_example' # character | Filter for all amounts greater than a value.
var.last.index <- 56 # integer | Index of last result from previous page
var.contributor.type <- list("individual") # array[character] | Filters individual or committee contributions based on line number
var.contributor.occupation <- list("inner_example") # array[character] | Occupation of contributor, filers need to make an effort to gather this information
var.min.image.number <- 'min.image.number_example' # character | 
var.is.individual <- FALSE # character | Restrict to non-earmarked individual contributions where memo code is true. Filtering individuals is useful to make sure contributions are not double reported and in creating breakdowns of the amount of money coming from individuals.
var.min.load.date <- 'min.load.date_example' # character | Minimum load date
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.date <- 'max.date_example' # character | Maximum date
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.contributor.employer <- list("inner_example") # array[character] | Employer of contributor, filers need to make an effort to gather this information
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.two.year.transaction.period <- list(123) # array[integer] |  This is a two-year period that is derived from the year a transaction took place in the Itemized Schedule A and Schedule B tables. In cases where we have the date of the transaction (contribution_receipt_date in schedules/schedule_a, disbursement_date in schedules/schedule_b) the two_year_transaction_period is named after the ending, even-numbered year. If we do not have the date  of the transaction, we fall back to using the report year (report_year in both tables) instead,  making the same cycle adjustment as necessary. If no transaction year is specified, the results default to the most current cycle. 
var.max.load.date <- 'max.load.date_example' # character | Maximum load date
var.last.contribution.receipt.amount <- 3.4 # numeric | When sorting by `contribution_receipt_amount`, this is populated with the         `contribution_receipt_amount` of the last result. However, you will need to pass the index         of that last result to `last_index` to get the next page.

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleAGet(var.api.key, last.contribution.receipt.date=var.last.contribution.receipt.date, min.date=var.min.date, max.image.number=var.max.image.number, recipient.committee.org.type=var.recipient.committee.org.type, max.amount=var.max.amount, recipient.committee.designation=var.recipient.committee.designation, per.page=var.per.page, line.number=var.line.number, contributor.state=var.contributor.state, contributor.id=var.contributor.id, committee.id=var.committee.id, contributor.city=var.contributor.city, recipient.committee.type=var.recipient.committee.type, sort=var.sort, contributor.name=var.contributor.name, contributor.zip=var.contributor.zip, min.amount=var.min.amount, last.index=var.last.index, contributor.type=var.contributor.type, contributor.occupation=var.contributor.occupation, min.image.number=var.min.image.number, is.individual=var.is.individual, min.load.date=var.min.load.date, sort.hide.null=var.sort.hide.null, max.date=var.max.date, image.number=var.image.number, contributor.employer=var.contributor.employer, sort.null.only=var.sort.null.only, two.year.transaction.period=var.two.year.transaction.period, max.load.date=var.max.load.date, last.contribution.receipt.amount=var.last.contribution.receipt.amount)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **last.contribution.receipt.date** | **character**| When sorting by &#x60;contribution_receipt_date&#x60;, this is populated with the         &#x60;contribution_receipt_date&#x60; of the last result. However, you will need to pass the index         of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 
 **min.date** | **character**| Minimum date | [optional] 
 **max.image.number** | **character**|  | [optional] 
 **recipient.committee.org.type** | Enum [, C, L, M, T, V, W] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **recipient.committee.designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **line.number** | **character**| Filter for form and line number using the following format: &#x60;FORM-LINENUMBER&#x60;.  For example an argument such as &#x60;F3X-16&#x60; would filter down to all entries from form &#x60;F3X&#x60; line number &#x60;16&#x60;. | [optional] 
 **contributor.state** | list( **character** )| State of contributor | [optional] 
 **contributor.id** | list( **character** )| The FEC identifier should be represented here if the contributor is registered with the FEC. | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **contributor.city** | list( **character** )| City of contributor | [optional] 
 **recipient.committee.type** | Enum [, C, D, E, H, I, N, O, P, Q, S, U, V, W, X, Y, Z] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-contribution_receipt_date&#39;]
 **contributor.name** | list( **character** )| Name of contributor | [optional] 
 **contributor.zip** | list( **character** )| Zip code of contributor | [optional] 
 **min.amount** | **character**| Filter for all amounts greater than a value. | [optional] 
 **last.index** | **integer**| Index of last result from previous page | [optional] 
 **contributor.type** | Enum [individual, committee] | Filters individual or committee contributions based on line number | [optional] 
 **contributor.occupation** | list( **character** )| Occupation of contributor, filers need to make an effort to gather this information | [optional] 
 **min.image.number** | **character**|  | [optional] 
 **is.individual** | **character**| Restrict to non-earmarked individual contributions where memo code is true. Filtering individuals is useful to make sure contributions are not double reported and in creating breakdowns of the amount of money coming from individuals. | [optional] [default to FALSE]
 **min.load.date** | **character**| Minimum load date | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.date** | **character**| Maximum date | [optional] 
 **image.number** | list( **character** )| The image number of the page where the schedule item is reported | [optional] 
 **contributor.employer** | list( **character** )| Employer of contributor, filers need to make an effort to gather this information | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **two.year.transaction.period** | list( **integer** )|  This is a two-year period that is derived from the year a transaction took place in the Itemized Schedule A and Schedule B tables. In cases where we have the date of the transaction (contribution_receipt_date in schedules/schedule_a, disbursement_date in schedules/schedule_b) the two_year_transaction_period is named after the ending, even-numbered year. If we do not have the date  of the transaction, we fall back to using the report year (report_year in both tables) instead,  making the same cycle adjustment as necessary. If no transaction year is specified, the results default to the most current cycle.  | [optional] 
 **max.load.date** | **character**| Maximum load date | [optional] 
 **last.contribution.receipt.amount** | **numeric**| When sorting by &#x60;contribution_receipt_amount&#x60;, this is populated with the         &#x60;contribution_receipt_amount&#x60; of the last result. However, you will need to pass the index         of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 

### Return type

[**ScheduleAPage**](ScheduleAPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleASubIdGet**
> ScheduleAPage SchedulesScheduleASubIdGet(api.key, sub.id, last.contribution.receipt.date=var.last.contribution.receipt.date, min.date=var.min.date, max.image.number=var.max.image.number, recipient.committee.org.type=var.recipient.committee.org.type, max.amount=var.max.amount, recipient.committee.designation=var.recipient.committee.designation, per.page=20, line.number=var.line.number, contributor.state=var.contributor.state, contributor.id=var.contributor.id, committee.id=var.committee.id, contributor.city=var.contributor.city, recipient.committee.type=var.recipient.committee.type, sort='-contribution_receipt_date', contributor.name=var.contributor.name, contributor.zip=var.contributor.zip, min.amount=var.min.amount, last.index=var.last.index, contributor.type=var.contributor.type, contributor.occupation=var.contributor.occupation, min.image.number=var.min.image.number, is.individual=FALSE, min.load.date=var.min.load.date, sort.hide.null=FALSE, max.date=var.max.date, image.number=var.image.number, contributor.employer=var.contributor.employer, sort.null.only=FALSE, two.year.transaction.period=var.two.year.transaction.period, max.load.date=var.max.load.date, last.contribution.receipt.amount=var.last.contribution.receipt.amount)



 This description is for both ​`/schedules​/schedule_a​/` and ​ `/schedules​/schedule_a​/{sub_id}​/`.  This endpoint provides itemized receipts. Schedule A records describe itemized receipts, including contributions from individuals. If you are interested in contributions from an individual, use the `/schedules/schedule_a/` endpoint. For a more complete description of all Schedule A records visit [About receipts data](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/about-receipts-data/). If you are interested in our \"is_individual\" methodology visit our [methodology page](https://www.fec.gov/campaign-finance-data/about-campaign-finance-data/methodology/).  ​The `/schedules​/schedule_a​/` endpoint is not paginated by page number. This endpoint uses keyset pagination to improve query performance and these indices are required to properly page through this large dataset. To request the next page, you should append the values found in the `last_indexes` object from pagination to the URL of your last request as additional parameters.  For example, when sorting by `contribution_receipt_date`, you might receive a page of results with the two scenarios of following pagination information:  case #1: ``` pagination: {     pages: 2152643,     per_page: 20,     count: 43052850,     last_indexes: {         last_index: \"230880619\",         last_contribution_receipt_date: \"2014-01-01\"     } } ``` <br/> case #2 (results which include contribution_receipt_date = NULL):  ``` pagination: {     pages: 2152644,     per_page: 20,     count: 43052850,     last_indexes: {         last_index: \"230880639\",         sort_null_only: True     } } ``` To fetch the next page of sorted results, append `last_index=230880619` and `last_contribution_receipt_date=2014-01-01` to the URL and when reaching `contribution_receipt_date=NULL`, append `last_index=230880639` and `sort_null_only=True`. We strongly advise paging through these results using sort indices. The default sort is acending by `contribution_receipt_date` (`deprecated`, will be descending). If you do not page using sort indices, some transactions may be unintentionally filtered out.  Calls to ​`/schedules​/schedule_a​/` may return many records. For large result sets, the record counts found in the pagination object are approximate; you will need to page through the records until no records are returned.  To avoid throwing the \"out of range\" exception on the last page, one recommandation is to use total count and `per_page` to control the traverse loop of results.  ​The `/schedules​/schedule_a​/{sub_id}​/` endpoint returns a single transaction, but it does include a pagination object class. Please ignore the information in that object class.  

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sub.id <- 'sub.id_example' # character | 
var.last.contribution.receipt.date <- 'last.contribution.receipt.date_example' # character | When sorting by `contribution_receipt_date`, this is populated with the         `contribution_receipt_date` of the last result. However, you will need to pass the index         of that last result to `last_index` to get the next page.
var.min.date <- 'min.date_example' # character | Minimum date
var.max.image.number <- 'max.image.number_example' # character | 
var.recipient.committee.org.type <- list("") # array[character] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock 
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.recipient.committee.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.line.number <- 'line.number_example' # character | Filter for form and line number using the following format: `FORM-LINENUMBER`.  For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
var.contributor.state <- list("inner_example") # array[character] | State of contributor
var.contributor.id <- list("inner_example") # array[character] | The FEC identifier should be represented here if the contributor is registered with the FEC.
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.contributor.city <- list("inner_example") # array[character] | City of contributor
var.recipient.committee.type <- list("") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.sort <- '-contribution_receipt_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.contributor.name <- list("inner_example") # array[character] | Name of contributor
var.contributor.zip <- list("inner_example") # array[character] | Zip code of contributor
var.min.amount <- 'min.amount_example' # character | Filter for all amounts greater than a value.
var.last.index <- 56 # integer | Index of last result from previous page
var.contributor.type <- list("individual") # array[character] | Filters individual or committee contributions based on line number
var.contributor.occupation <- list("inner_example") # array[character] | Occupation of contributor, filers need to make an effort to gather this information
var.min.image.number <- 'min.image.number_example' # character | 
var.is.individual <- FALSE # character | Restrict to non-earmarked individual contributions where memo code is true. Filtering individuals is useful to make sure contributions are not double reported and in creating breakdowns of the amount of money coming from individuals.
var.min.load.date <- 'min.load.date_example' # character | Minimum load date
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.date <- 'max.date_example' # character | Maximum date
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.contributor.employer <- list("inner_example") # array[character] | Employer of contributor, filers need to make an effort to gather this information
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.two.year.transaction.period <- list(123) # array[integer] |  This is a two-year period that is derived from the year a transaction took place in the Itemized Schedule A and Schedule B tables. In cases where we have the date of the transaction (contribution_receipt_date in schedules/schedule_a, disbursement_date in schedules/schedule_b) the two_year_transaction_period is named after the ending, even-numbered year. If we do not have the date  of the transaction, we fall back to using the report year (report_year in both tables) instead,  making the same cycle adjustment as necessary. If no transaction year is specified, the results default to the most current cycle. 
var.max.load.date <- 'max.load.date_example' # character | Maximum load date
var.last.contribution.receipt.amount <- 3.4 # numeric | When sorting by `contribution_receipt_amount`, this is populated with the         `contribution_receipt_amount` of the last result. However, you will need to pass the index         of that last result to `last_index` to get the next page.

api.instance <- ReceiptsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleASubIdGet(var.api.key, var.sub.id, last.contribution.receipt.date=var.last.contribution.receipt.date, min.date=var.min.date, max.image.number=var.max.image.number, recipient.committee.org.type=var.recipient.committee.org.type, max.amount=var.max.amount, recipient.committee.designation=var.recipient.committee.designation, per.page=var.per.page, line.number=var.line.number, contributor.state=var.contributor.state, contributor.id=var.contributor.id, committee.id=var.committee.id, contributor.city=var.contributor.city, recipient.committee.type=var.recipient.committee.type, sort=var.sort, contributor.name=var.contributor.name, contributor.zip=var.contributor.zip, min.amount=var.min.amount, last.index=var.last.index, contributor.type=var.contributor.type, contributor.occupation=var.contributor.occupation, min.image.number=var.min.image.number, is.individual=var.is.individual, min.load.date=var.min.load.date, sort.hide.null=var.sort.hide.null, max.date=var.max.date, image.number=var.image.number, contributor.employer=var.contributor.employer, sort.null.only=var.sort.null.only, two.year.transaction.period=var.two.year.transaction.period, max.load.date=var.max.load.date, last.contribution.receipt.amount=var.last.contribution.receipt.amount)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sub.id** | **character**|  | 
 **last.contribution.receipt.date** | **character**| When sorting by &#x60;contribution_receipt_date&#x60;, this is populated with the         &#x60;contribution_receipt_date&#x60; of the last result. However, you will need to pass the index         of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 
 **min.date** | **character**| Minimum date | [optional] 
 **max.image.number** | **character**|  | [optional] 
 **recipient.committee.org.type** | Enum [, C, L, M, T, V, W] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **recipient.committee.designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **line.number** | **character**| Filter for form and line number using the following format: &#x60;FORM-LINENUMBER&#x60;.  For example an argument such as &#x60;F3X-16&#x60; would filter down to all entries from form &#x60;F3X&#x60; line number &#x60;16&#x60;. | [optional] 
 **contributor.state** | list( **character** )| State of contributor | [optional] 
 **contributor.id** | list( **character** )| The FEC identifier should be represented here if the contributor is registered with the FEC. | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **contributor.city** | list( **character** )| City of contributor | [optional] 
 **recipient.committee.type** | Enum [, C, D, E, H, I, N, O, P, Q, S, U, V, W, X, Y, Z] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-contribution_receipt_date&#39;]
 **contributor.name** | list( **character** )| Name of contributor | [optional] 
 **contributor.zip** | list( **character** )| Zip code of contributor | [optional] 
 **min.amount** | **character**| Filter for all amounts greater than a value. | [optional] 
 **last.index** | **integer**| Index of last result from previous page | [optional] 
 **contributor.type** | Enum [individual, committee] | Filters individual or committee contributions based on line number | [optional] 
 **contributor.occupation** | list( **character** )| Occupation of contributor, filers need to make an effort to gather this information | [optional] 
 **min.image.number** | **character**|  | [optional] 
 **is.individual** | **character**| Restrict to non-earmarked individual contributions where memo code is true. Filtering individuals is useful to make sure contributions are not double reported and in creating breakdowns of the amount of money coming from individuals. | [optional] [default to FALSE]
 **min.load.date** | **character**| Minimum load date | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.date** | **character**| Maximum date | [optional] 
 **image.number** | list( **character** )| The image number of the page where the schedule item is reported | [optional] 
 **contributor.employer** | list( **character** )| Employer of contributor, filers need to make an effort to gather this information | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **two.year.transaction.period** | list( **integer** )|  This is a two-year period that is derived from the year a transaction took place in the Itemized Schedule A and Schedule B tables. In cases where we have the date of the transaction (contribution_receipt_date in schedules/schedule_a, disbursement_date in schedules/schedule_b) the two_year_transaction_period is named after the ending, even-numbered year. If we do not have the date  of the transaction, we fall back to using the report year (report_year in both tables) instead,  making the same cycle adjustment as necessary. If no transaction year is specified, the results default to the most current cycle.  | [optional] 
 **max.load.date** | **character**| Maximum load date | [optional] 
 **last.contribution.receipt.amount** | **numeric**| When sorting by &#x60;contribution_receipt_amount&#x60;, this is populated with the         &#x60;contribution_receipt_amount&#x60; of the last result. However, you will need to pass the index         of that last result to &#x60;last_index&#x60; to get the next page. | [optional] 

### Return type

[**ScheduleAPage**](ScheduleAPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

