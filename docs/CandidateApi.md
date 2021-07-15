# CandidateApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CandidateCandidateIdGet**](CandidateApi.md#CandidateCandidateIdGet) | **GET** /candidate/{candidate_id}/ | 
[**CandidateCandidateIdHistoryCycleGet**](CandidateApi.md#CandidateCandidateIdHistoryCycleGet) | **GET** /candidate/{candidate_id}/history/{cycle}/ | 
[**CandidateCandidateIdHistoryGet**](CandidateApi.md#CandidateCandidateIdHistoryGet) | **GET** /candidate/{candidate_id}/history/ | 
[**CandidateCandidateIdTotalsGet**](CandidateApi.md#CandidateCandidateIdTotalsGet) | **GET** /candidate/{candidate_id}/totals/ | 
[**CandidatesGet**](CandidateApi.md#CandidatesGet) | **GET** /candidates/ | 
[**CandidatesSearchGet**](CandidateApi.md#CandidatesSearchGet) | **GET** /candidates/search/ | 
[**CandidatesTotalsByOfficeByPartyGet**](CandidateApi.md#CandidatesTotalsByOfficeByPartyGet) | **GET** /candidates/totals/by_office/by_party/ | 
[**CandidatesTotalsByOfficeGet**](CandidateApi.md#CandidatesTotalsByOfficeGet) | **GET** /candidates/totals/by_office/ | 
[**CandidatesTotalsGet**](CandidateApi.md#CandidatesTotalsGet) | **GET** /candidates/totals/ | 
[**CommitteeCommitteeIdCandidatesGet**](CandidateApi.md#CommitteeCommitteeIdCandidatesGet) | **GET** /committee/{committee_id}/candidates/ | 
[**CommitteeCommitteeIdCandidatesHistoryCycleGet**](CandidateApi.md#CommitteeCommitteeIdCandidatesHistoryCycleGet) | **GET** /committee/{committee_id}/candidates/history/{cycle}/ | 
[**CommitteeCommitteeIdCandidatesHistoryGet**](CandidateApi.md#CommitteeCommitteeIdCandidatesHistoryGet) | **GET** /committee/{committee_id}/candidates/history/ | 


# **CandidateCandidateIdGet**
> CandidateDetailPage CandidateCandidateIdGet(api.key, candidate.id, incumbent.challenge=var.incumbent.challenge, has.raised.funds=var.has.raised.funds, per.page=20, name=var.name, sort='name', state=var.state, cycle=var.cycle, sort.hide.null=FALSE, year=var.year, sort.nulls.last=FALSE, district=var.district, candidate.status=var.candidate.status, sort.null.only=FALSE, office=var.office, party=var.party, page=1, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)



 This endpoint is useful for finding detailed information about a particular candidate. Use the `candidate_id` to find the most recent information about that candidate. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.incumbent.challenge <- list("") # array[character] | One-letter code ('I', 'C', 'O') explaining if the candidate is an incumbent, a challenger, or if the seat is open.
var.has.raised.funds <- 'has.raised.funds_example' # character | A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.)
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.name <- list("inner_example") # array[character] | Name (candidate or committee) to search for. Alias for 'q'.
var.sort <- 'name' # character | Provide a field to sort by. Use `-` for descending order. 
var.state <- list("inner_example") # array[character] | US state or territory where a candidate runs for office
var.cycle <- list(123) # array[integer] |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.year <- 'year_example' # character | Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.candidate.status <- list("") # array[character] | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.office <- list("") # array[character] | Federal office candidate runs for: H, S or P
var.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] | Year of election
var.federal.funds.flag <- 'federal.funds.flag_example' # character | A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates.

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidateCandidateIdGet(var.api.key, var.candidate.id, incumbent.challenge=var.incumbent.challenge, has.raised.funds=var.has.raised.funds, per.page=var.per.page, name=var.name, sort=var.sort, state=var.state, cycle=var.cycle, sort.hide.null=var.sort.hide.null, year=var.year, sort.nulls.last=var.sort.nulls.last, district=var.district, candidate.status=var.candidate.status, sort.null.only=var.sort.null.only, office=var.office, party=var.party, page=var.page, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **incumbent.challenge** | Enum [, I, C, O] | One-letter code (&#39;I&#39;, &#39;C&#39;, &#39;O&#39;) explaining if the candidate is an incumbent, a challenger, or if the seat is open. | [optional] 
 **has.raised.funds** | **character**| A boolean that describes if a candidate&#39;s committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **name** | list( **character** )| Name (candidate or committee) to search for. Alias for &#39;q&#39;. | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;name&#39;]
 **state** | list( **character** )| US state or territory where a candidate runs for office | [optional] 
 **cycle** | list( **integer** )|  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **year** | **character**| Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year. | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **candidate.status** | Enum [, C, F, N, P] | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )| Year of election | [optional] 
 **federal.funds.flag** | **character**| A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. | [optional] 

### Return type

[**CandidateDetailPage**](CandidateDetailPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidateCandidateIdHistoryCycleGet**
> CandidateHistoryPage CandidateCandidateIdHistoryCycleGet(api.key, cycle, candidate.id, sort='-two_year_period', sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, page=1, sort.null.only=FALSE)



 Find out a candidate's characteristics over time. This is particularly useful if the candidate runs for the same office in different districts or you want to know more about a candidate's previous races.  This information is organized by `candidate_id`, so it won't help you find a candidate who ran for different offices over time; candidates get a new ID for each office. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.cycle <- 56 # integer |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort <- '-two_year_period' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.page <- 1 # integer | For paginating through results, starting at page 1
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidateCandidateIdHistoryCycleGet(var.api.key, var.cycle, var.candidate.id, sort=var.sort, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, page=var.page, sort.null.only=var.sort.null.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **cycle** | **integer**|  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | 
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-two_year_period&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]

### Return type

[**CandidateHistoryPage**](CandidateHistoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidateCandidateIdHistoryGet**
> CandidateHistoryPage CandidateCandidateIdHistoryGet(api.key, candidate.id, sort='-two_year_period', sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, page=1, sort.null.only=FALSE)



 Find out a candidate's characteristics over time. This is particularly useful if the candidate runs for the same office in different districts or you want to know more about a candidate's previous races.  This information is organized by `candidate_id`, so it won't help you find a candidate who ran for different offices over time; candidates get a new ID for each office. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort <- '-two_year_period' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.page <- 1 # integer | For paginating through results, starting at page 1
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidateCandidateIdHistoryGet(var.api.key, var.candidate.id, sort=var.sort, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, page=var.page, sort.null.only=var.sort.null.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-two_year_period&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]

### Return type

[**CandidateHistoryPage**](CandidateHistoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidateCandidateIdTotalsGet**
> CommitteeTotalsPage CandidateCandidateIdTotalsGet(api.key, candidate.id, sort.hide.null=FALSE, per.page=20, election.full=var.election.full, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='-cycle', cycle=var.cycle, page=1)



 This endpoint provides information about a committee's Form 3, Form 3X, or Form 3P financial reports, which are aggregated by two-year period. We refer to two-year periods as a `cycle`.  The cycle is named after the even-numbered year and includes the year before it. To obtain totals from 2013 and 2014, you would use 2014. In odd-numbered years, the current cycle is the next year — for example, in 2015, the current cycle is 2016.  For presidential and Senate candidates, multiple two-year cycles exist between elections.  

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- 'election.full_example' # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-cycle' # character | Provide a field to sort by. Use `-` for descending order. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidateCandidateIdTotalsGet(var.api.key, var.candidate.id, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-cycle&#39;]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteeTotalsPage**](CommitteeTotalsPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidatesGet**
> CandidatePage CandidatesGet(api.key, incumbent.challenge=var.incumbent.challenge, has.raised.funds=var.has.raised.funds, is.active.candidate=var.is.active.candidate, per.page=20, name=var.name, sort='name', q=var.q, state=var.state, cycle=var.cycle, min.first.file.date=var.min.first.file.date, sort.hide.null=FALSE, year=var.year, max.first.file.date=var.max.first.file.date, sort.nulls.last=FALSE, district=var.district, candidate.id=var.candidate.id, candidate.status=var.candidate.status, sort.null.only=FALSE, office=var.office, party=var.party, page=1, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)



 Fetch basic information about candidates, and use parameters to filter results to the candidates you're looking for.  Each result reflects a unique FEC candidate ID. That ID is particular to the candidate for a particular office sought. If a candidate runs for the same office multiple times, the ID stays the same. If the same person runs for another office — for example, a House candidate runs for a Senate office — that candidate will get a unique ID for each office. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.incumbent.challenge <- list("") # array[character] | One-letter code ('I', 'C', 'O') explaining if the candidate is an incumbent, a challenger, or if the seat is open.
var.has.raised.funds <- 'has.raised.funds_example' # character | A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.)
var.is.active.candidate <- 'is.active.candidate_example' # character |  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.name <- list("inner_example") # array[character] | Name (candidate or committee) to search for. Alias for 'q'.
var.sort <- 'name' # character | Provide a field to sort by. Use `-` for descending order. 
var.q <- list("inner_example") # array[character] | Name of candidate running for office
var.state <- list("inner_example") # array[character] | US state or territory where a candidate runs for office
var.cycle <- list(123) # array[integer] |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
var.min.first.file.date <- 'min.first.file.date_example' # character | Selects all candidates whose first filing was received by the FEC after this date.
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.year <- 'year_example' # character | Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year.
var.max.first.file.date <- 'max.first.file.date_example' # character | Selects all candidates whose first filing was received by the FEC before this date.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.candidate.status <- list("") # array[character] | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.office <- list("") # array[character] | Federal office candidate runs for: H, S or P
var.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] | Year of election
var.federal.funds.flag <- 'federal.funds.flag_example' # character | A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates.

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidatesGet(var.api.key, incumbent.challenge=var.incumbent.challenge, has.raised.funds=var.has.raised.funds, is.active.candidate=var.is.active.candidate, per.page=var.per.page, name=var.name, sort=var.sort, q=var.q, state=var.state, cycle=var.cycle, min.first.file.date=var.min.first.file.date, sort.hide.null=var.sort.hide.null, year=var.year, max.first.file.date=var.max.first.file.date, sort.nulls.last=var.sort.nulls.last, district=var.district, candidate.id=var.candidate.id, candidate.status=var.candidate.status, sort.null.only=var.sort.null.only, office=var.office, party=var.party, page=var.page, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **incumbent.challenge** | Enum [, I, C, O] | One-letter code (&#39;I&#39;, &#39;C&#39;, &#39;O&#39;) explaining if the candidate is an incumbent, a challenger, or if the seat is open. | [optional] 
 **has.raised.funds** | **character**| A boolean that describes if a candidate&#39;s committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) | [optional] 
 **is.active.candidate** | **character**|  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **name** | list( **character** )| Name (candidate or committee) to search for. Alias for &#39;q&#39;. | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;name&#39;]
 **q** | list( **character** )| Name of candidate running for office | [optional] 
 **state** | list( **character** )| US state or territory where a candidate runs for office | [optional] 
 **cycle** | list( **integer** )|  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | [optional] 
 **min.first.file.date** | **character**| Selects all candidates whose first filing was received by the FEC after this date. | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **year** | **character**| Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year. | [optional] 
 **max.first.file.date** | **character**| Selects all candidates whose first filing was received by the FEC before this date. | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **candidate.status** | Enum [, C, F, N, P] | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )| Year of election | [optional] 
 **federal.funds.flag** | **character**| A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. | [optional] 

### Return type

[**CandidatePage**](CandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidatesSearchGet**
> CandidatePage CandidatesSearchGet(api.key, incumbent.challenge=var.incumbent.challenge, has.raised.funds=var.has.raised.funds, is.active.candidate=var.is.active.candidate, per.page=20, name=var.name, sort='name', q=var.q, state=var.state, cycle=var.cycle, min.first.file.date=var.min.first.file.date, sort.hide.null=FALSE, year=var.year, max.first.file.date=var.max.first.file.date, sort.nulls.last=FALSE, district=var.district, candidate.id=var.candidate.id, candidate.status=var.candidate.status, sort.null.only=FALSE, office=var.office, party=var.party, page=1, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)



 Fetch basic information about candidates and their principal committees.  Each result reflects a unique FEC candidate ID. That ID is assigned to the candidate for a particular office sought. If a candidate runs for the same office over time, that ID stays the same. If the same person runs for multiple offices — for example, a House candidate runs for a Senate office — that candidate will get a unique ID for each office.  The candidate endpoints primarily use data from FEC registration [Form 1](http://www.fec.gov/pdf/forms/fecfrm1.pdf) for committee information and [Form 2](http://www.fec.gov/pdf/forms/fecfrm2.pdf) for candidate information. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.incumbent.challenge <- list("") # array[character] | One-letter code ('I', 'C', 'O') explaining if the candidate is an incumbent, a challenger, or if the seat is open.
var.has.raised.funds <- 'has.raised.funds_example' # character | A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.)
var.is.active.candidate <- 'is.active.candidate_example' # character |  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.name <- list("inner_example") # array[character] | Name (candidate or committee) to search for. Alias for 'q'.
var.sort <- 'name' # character | Provide a field to sort by. Use `-` for descending order. 
var.q <- list("inner_example") # array[character] | Name of candidate running for office
var.state <- list("inner_example") # array[character] | US state or territory where a candidate runs for office
var.cycle <- list(123) # array[integer] |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
var.min.first.file.date <- 'min.first.file.date_example' # character | Selects all candidates whose first filing was received by the FEC after this date.
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.year <- 'year_example' # character | Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year.
var.max.first.file.date <- 'max.first.file.date_example' # character | Selects all candidates whose first filing was received by the FEC before this date.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.candidate.status <- list("") # array[character] | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.office <- list("") # array[character] | Federal office candidate runs for: H, S or P
var.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] | Year of election
var.federal.funds.flag <- 'federal.funds.flag_example' # character | A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates.

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidatesSearchGet(var.api.key, incumbent.challenge=var.incumbent.challenge, has.raised.funds=var.has.raised.funds, is.active.candidate=var.is.active.candidate, per.page=var.per.page, name=var.name, sort=var.sort, q=var.q, state=var.state, cycle=var.cycle, min.first.file.date=var.min.first.file.date, sort.hide.null=var.sort.hide.null, year=var.year, max.first.file.date=var.max.first.file.date, sort.nulls.last=var.sort.nulls.last, district=var.district, candidate.id=var.candidate.id, candidate.status=var.candidate.status, sort.null.only=var.sort.null.only, office=var.office, party=var.party, page=var.page, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **incumbent.challenge** | Enum [, I, C, O] | One-letter code (&#39;I&#39;, &#39;C&#39;, &#39;O&#39;) explaining if the candidate is an incumbent, a challenger, or if the seat is open. | [optional] 
 **has.raised.funds** | **character**| A boolean that describes if a candidate&#39;s committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) | [optional] 
 **is.active.candidate** | **character**|  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **name** | list( **character** )| Name (candidate or committee) to search for. Alias for &#39;q&#39;. | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;name&#39;]
 **q** | list( **character** )| Name of candidate running for office | [optional] 
 **state** | list( **character** )| US state or territory where a candidate runs for office | [optional] 
 **cycle** | list( **integer** )|  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | [optional] 
 **min.first.file.date** | **character**| Selects all candidates whose first filing was received by the FEC after this date. | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **year** | **character**| Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year. | [optional] 
 **max.first.file.date** | **character**| Selects all candidates whose first filing was received by the FEC before this date. | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **candidate.status** | Enum [, C, F, N, P] | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )| Year of election | [optional] 
 **federal.funds.flag** | **character**| A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. | [optional] 

### Return type

[**CandidatePage**](CandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidatesTotalsByOfficeByPartyGet**
> TotalByOfficeByPartyPage CandidatesTotalsByOfficeByPartyGet(api.key, sort.hide.null=FALSE, is.active.candidate=var.is.active.candidate, per.page=20, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='null', office=var.office, page=1, election.year=var.election.year)



 Aggregated candidate receipts and disbursements grouped by office by party by cycle. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.is.active.candidate <- 'is.active.candidate_example' # character |  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.office <- 'office_example' # character | Federal office candidate runs for: H, S or P
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidatesTotalsByOfficeByPartyGet(var.api.key, sort.hide.null=var.sort.hide.null, is.active.candidate=var.is.active.candidate, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, office=var.office, page=var.page, election.year=var.election.year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **is.active.candidate** | **character**|  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 

### Return type

[**TotalByOfficeByPartyPage**](TotalByOfficeByPartyPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidatesTotalsByOfficeGet**
> TotalByOfficePage CandidatesTotalsByOfficeGet(api.key, sort.hide.null=FALSE, is.active.candidate=var.is.active.candidate, per.page=20, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='null', office=var.office, page=1, election.year=var.election.year)



 Aggregated candidate receipts and disbursements grouped by office by cycle. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.is.active.candidate <- 'is.active.candidate_example' # character |  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.office <- 'office_example' # character | Federal office candidate runs for: H, S or P
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidatesTotalsByOfficeGet(var.api.key, sort.hide.null=var.sort.hide.null, is.active.candidate=var.is.active.candidate, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, office=var.office, page=var.page, election.year=var.election.year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **is.active.candidate** | **character**|  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 

### Return type

[**TotalByOfficePage**](TotalByOfficePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidatesTotalsGet**
> CandidateHistoryTotalPage CandidatesTotalsGet(api.key, has.raised.funds=var.has.raised.funds, max.receipts=var.max.receipts, is.active.candidate=var.is.active.candidate, per.page=20, min.disbursements=var.min.disbursements, election.full=TRUE, min.cash.on.hand.end.period=var.min.cash.on.hand.end.period, min.debts.owed.by.committee=var.min.debts.owed.by.committee, min.receipts=var.min.receipts, sort='null', q=var.q, max.disbursements=var.max.disbursements, max.cash.on.hand.end.period=var.max.cash.on.hand.end.period, state=var.state, cycle=var.cycle, sort.hide.null=FALSE, sort.nulls.last=FALSE, district=var.district, candidate.id=var.candidate.id, sort.null.only=FALSE, office=var.office, party=var.party, max.debts.owed.by.committee=var.max.debts.owed.by.committee, page=1, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)



 Aggregated candidate receipts and disbursements grouped by cycle. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.has.raised.funds <- 'has.raised.funds_example' # character | A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.)
var.max.receipts <- 'max.receipts_example' # character | Maximum aggregated receipts
var.is.active.candidate <- 'is.active.candidate_example' # character |  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.min.disbursements <- 'min.disbursements_example' # character | Minimum aggregated disbursements
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.min.cash.on.hand.end.period <- 'min.cash.on.hand.end.period_example' # character | Minimum cash on hand
var.min.debts.owed.by.committee <- 'min.debts.owed.by.committee_example' # character | Minimum debt
var.min.receipts <- 'min.receipts_example' # character | Minimum aggregated receipts
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.q <- list("inner_example") # array[character] | Name of candidate running for office
var.max.disbursements <- 'max.disbursements_example' # character | Maximum aggregated disbursements
var.max.cash.on.hand.end.period <- 'max.cash.on.hand.end.period_example' # character | Maximum cash on hand
var.state <- list("inner_example") # array[character] | State of candidate
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- list("inner_example") # array[character] | District of candidate
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.office <- list("") # array[character] | Federal office candidate runs for: H, S or P
var.party <- list("inner_example") # array[character] | Three-letter party code
var.max.debts.owed.by.committee <- 'max.debts.owed.by.committee_example' # character | Maximum debt
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.federal.funds.flag <- 'federal.funds.flag_example' # character | A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates.

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidatesTotalsGet(var.api.key, has.raised.funds=var.has.raised.funds, max.receipts=var.max.receipts, is.active.candidate=var.is.active.candidate, per.page=var.per.page, min.disbursements=var.min.disbursements, election.full=var.election.full, min.cash.on.hand.end.period=var.min.cash.on.hand.end.period, min.debts.owed.by.committee=var.min.debts.owed.by.committee, min.receipts=var.min.receipts, sort=var.sort, q=var.q, max.disbursements=var.max.disbursements, max.cash.on.hand.end.period=var.max.cash.on.hand.end.period, state=var.state, cycle=var.cycle, sort.hide.null=var.sort.hide.null, sort.nulls.last=var.sort.nulls.last, district=var.district, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, office=var.office, party=var.party, max.debts.owed.by.committee=var.max.debts.owed.by.committee, page=var.page, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **has.raised.funds** | **character**| A boolean that describes if a candidate&#39;s committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) | [optional] 
 **max.receipts** | **character**| Maximum aggregated receipts | [optional] 
 **is.active.candidate** | **character**|  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **min.disbursements** | **character**| Minimum aggregated disbursements | [optional] 
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **min.cash.on.hand.end.period** | **character**| Minimum cash on hand | [optional] 
 **min.debts.owed.by.committee** | **character**| Minimum debt | [optional] 
 **min.receipts** | **character**| Minimum aggregated receipts | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **q** | list( **character** )| Name of candidate running for office | [optional] 
 **max.disbursements** | **character**| Maximum aggregated disbursements | [optional] 
 **max.cash.on.hand.end.period** | **character**| Maximum cash on hand | [optional] 
 **state** | list( **character** )| State of candidate | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | list( **character** )| District of candidate | [optional] 
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **party** | list( **character** )| Three-letter party code | [optional] 
 **max.debts.owed.by.committee** | **character**| Maximum debt | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **federal.funds.flag** | **character**| A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. | [optional] 

### Return type

[**CandidateHistoryTotalPage**](CandidateHistoryTotalPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommitteeCommitteeIdCandidatesGet**
> CandidateDetailPage CommitteeCommitteeIdCandidatesGet(api.key, committee.id, incumbent.challenge=var.incumbent.challenge, has.raised.funds=var.has.raised.funds, per.page=20, name=var.name, sort='name', state=var.state, cycle=var.cycle, sort.hide.null=FALSE, year=var.year, sort.nulls.last=FALSE, district=var.district, candidate.status=var.candidate.status, sort.null.only=FALSE, office=var.office, party=var.party, page=1, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)



 This endpoint is useful for finding detailed information about a particular candidate. Use the `candidate_id` to find the most recent information about that candidate. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.incumbent.challenge <- list("") # array[character] | One-letter code ('I', 'C', 'O') explaining if the candidate is an incumbent, a challenger, or if the seat is open.
var.has.raised.funds <- 'has.raised.funds_example' # character | A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.)
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.name <- list("inner_example") # array[character] | Name (candidate or committee) to search for. Alias for 'q'.
var.sort <- 'name' # character | Provide a field to sort by. Use `-` for descending order. 
var.state <- list("inner_example") # array[character] | US state or territory where a candidate runs for office
var.cycle <- list(123) # array[integer] |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.year <- 'year_example' # character | Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.candidate.status <- list("") # array[character] | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.office <- list("") # array[character] | Federal office candidate runs for: H, S or P
var.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list(123) # array[integer] | Year of election
var.federal.funds.flag <- 'federal.funds.flag_example' # character | A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates.

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteeCommitteeIdCandidatesGet(var.api.key, var.committee.id, incumbent.challenge=var.incumbent.challenge, has.raised.funds=var.has.raised.funds, per.page=var.per.page, name=var.name, sort=var.sort, state=var.state, cycle=var.cycle, sort.hide.null=var.sort.hide.null, year=var.year, sort.nulls.last=var.sort.nulls.last, district=var.district, candidate.status=var.candidate.status, sort.null.only=var.sort.null.only, office=var.office, party=var.party, page=var.page, election.year=var.election.year, federal.funds.flag=var.federal.funds.flag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
 **incumbent.challenge** | Enum [, I, C, O] | One-letter code (&#39;I&#39;, &#39;C&#39;, &#39;O&#39;) explaining if the candidate is an incumbent, a challenger, or if the seat is open. | [optional] 
 **has.raised.funds** | **character**| A boolean that describes if a candidate&#39;s committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **name** | list( **character** )| Name (candidate or committee) to search for. Alias for &#39;q&#39;. | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;name&#39;]
 **state** | list( **character** )| US state or territory where a candidate runs for office | [optional] 
 **cycle** | list( **integer** )|  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **year** | **character**| Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year. | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **candidate.status** | Enum [, C, F, N, P] | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **integer** )| Year of election | [optional] 
 **federal.funds.flag** | **character**| A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. | [optional] 

### Return type

[**CandidateDetailPage**](CandidateDetailPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommitteeCommitteeIdCandidatesHistoryCycleGet**
> CandidateHistoryPage CommitteeCommitteeIdCandidatesHistoryCycleGet(api.key, cycle, committee.id, sort='-two_year_period', sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, page=1, sort.null.only=FALSE)



 Find out a candidate's characteristics over time. This is particularly useful if the candidate runs for the same office in different districts or you want to know more about a candidate's previous races.  This information is organized by `candidate_id`, so it won't help you find a candidate who ran for different offices over time; candidates get a new ID for each office. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.cycle <- 56 # integer |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- '-two_year_period' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.page <- 1 # integer | For paginating through results, starting at page 1
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteeCommitteeIdCandidatesHistoryCycleGet(var.api.key, var.cycle, var.committee.id, sort=var.sort, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, page=var.page, sort.null.only=var.sort.null.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **cycle** | **integer**|  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | 
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-two_year_period&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]

### Return type

[**CandidateHistoryPage**](CandidateHistoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommitteeCommitteeIdCandidatesHistoryGet**
> CandidateHistoryPage CommitteeCommitteeIdCandidatesHistoryGet(api.key, committee.id, sort='-two_year_period', sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, page=1, sort.null.only=FALSE)



 Find out a candidate's characteristics over time. This is particularly useful if the candidate runs for the same office in different districts or you want to know more about a candidate's previous races.  This information is organized by `candidate_id`, so it won't help you find a candidate who ran for different offices over time; candidates get a new ID for each office. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- '-two_year_period' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.page <- 1 # integer | For paginating through results, starting at page 1
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null

api.instance <- CandidateApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteeCommitteeIdCandidatesHistoryGet(var.api.key, var.committee.id, sort=var.sort, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, page=var.page, sort.null.only=var.sort.null.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-two_year_period&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]

### Return type

[**CandidateHistoryPage**](CandidateHistoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

