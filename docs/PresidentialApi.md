# PresidentialApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PresidentialContributionsByCandidateGet**](PresidentialApi.md#PresidentialContributionsByCandidateGet) | **GET** /presidential/contributions/by_candidate/ | 
[**PresidentialContributionsBySizeGet**](PresidentialApi.md#PresidentialContributionsBySizeGet) | **GET** /presidential/contributions/by_size/ | 
[**PresidentialContributionsByStateGet**](PresidentialApi.md#PresidentialContributionsByStateGet) | **GET** /presidential/contributions/by_state/ | 
[**PresidentialCoverageEndDateGet**](PresidentialApi.md#PresidentialCoverageEndDateGet) | **GET** /presidential/coverage_end_date/ | 
[**PresidentialFinancialSummaryGet**](PresidentialApi.md#PresidentialFinancialSummaryGet) | **GET** /presidential/financial_summary/ | 


# **PresidentialContributionsByCandidateGet**
> PresidentialByCandidatePage PresidentialContributionsByCandidateGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, contributor.state=var.contributor.state, sort.null.only=FALSE, sort='-net_receipts', page=1, election.year=var.election.year)



 Net receipts per candidate.  Filter with `contributor_state='US'` for national totals 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.contributor.state <- list("inner_example") # array[character] | State of contributor
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-net_receipts' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] | Year of election

api.instance <- PresidentialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PresidentialContributionsByCandidateGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, contributor.state=var.contributor.state, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page, election.year=var.election.year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **contributor.state** | list( **character** )| State of contributor | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-net_receipts&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )| Year of election | [optional] 

### Return type

[**PresidentialByCandidatePage**](PresidentialByCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **PresidentialContributionsBySizeGet**
> PresidentialBySizePage PresidentialContributionsBySizeGet(api.key, sort.hide.null=FALSE, size=var.size, per.page=20, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, sort='size', page=1, election.year=var.election.year)



 Contribution receipts by size per candidate.  Filter by candidate_id, election_year and/or size 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.size <- list(123) # array[integer] |  The total all contributions in the following ranges: ```   -0    $200 and under   -200  $200.01 - $499.99   -500  $500 - $999.99   -1000 $1000 - $1999.99   -2000 $2000 + ``` Unitemized contributions are included in the `0` category. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'size' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] | Year of election

api.instance <- PresidentialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PresidentialContributionsBySizeGet(var.api.key, sort.hide.null=var.sort.hide.null, size=var.size, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page, election.year=var.election.year)
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
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;size&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )| Year of election | [optional] 

### Return type

[**PresidentialBySizePage**](PresidentialBySizePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **PresidentialContributionsByStateGet**
> PresidentialByStatePage PresidentialContributionsByStateGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, sort='-contribution_receipt_amount', page=1, election.year=var.election.year)



 Contribution receipts by state per candidate.  Filter by candidate_id and/or election_year 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-contribution_receipt_amount' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] | Year of election

api.instance <- PresidentialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PresidentialContributionsByStateGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page, election.year=var.election.year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-contribution_receipt_amount&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )| Year of election | [optional] 

### Return type

[**PresidentialByStatePage**](PresidentialByStatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **PresidentialCoverageEndDateGet**
> PresidentialCoveragePage PresidentialCoverageEndDateGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, sort='candidate_id', page=1, election.year=var.election.year)



 Coverage end date per candidate.  Filter by candidate_id and/or election_year 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'candidate_id' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] | Year of election

api.instance <- PresidentialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PresidentialCoverageEndDateGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page, election.year=var.election.year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;candidate_id&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )| Year of election | [optional] 

### Return type

[**PresidentialCoveragePage**](PresidentialCoveragePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **PresidentialFinancialSummaryGet**
> PresidentialSummaryPage PresidentialFinancialSummaryGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, sort='-net_receipts', page=1, election.year=var.election.year)



 Financial summary per candidate.  Filter by candidate_id and/or election_year 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-net_receipts' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] | Year of election

api.instance <- PresidentialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PresidentialFinancialSummaryGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page, election.year=var.election.year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-net_receipts&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )| Year of election | [optional] 

### Return type

[**PresidentialSummaryPage**](PresidentialSummaryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

