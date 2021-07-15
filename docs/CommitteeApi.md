# CommitteeApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CandidateCandidateIdCommitteesGet**](CommitteeApi.md#CandidateCandidateIdCommitteesGet) | **GET** /candidate/{candidate_id}/committees/ | 
[**CandidateCandidateIdCommitteesHistoryCycleGet**](CommitteeApi.md#CandidateCandidateIdCommitteesHistoryCycleGet) | **GET** /candidate/{candidate_id}/committees/history/{cycle}/ | 
[**CandidateCandidateIdCommitteesHistoryGet**](CommitteeApi.md#CandidateCandidateIdCommitteesHistoryGet) | **GET** /candidate/{candidate_id}/committees/history/ | 
[**CommitteeCommitteeIdGet**](CommitteeApi.md#CommitteeCommitteeIdGet) | **GET** /committee/{committee_id}/ | 
[**CommitteeCommitteeIdHistoryCycleGet**](CommitteeApi.md#CommitteeCommitteeIdHistoryCycleGet) | **GET** /committee/{committee_id}/history/{cycle}/ | 
[**CommitteeCommitteeIdHistoryGet**](CommitteeApi.md#CommitteeCommitteeIdHistoryGet) | **GET** /committee/{committee_id}/history/ | 
[**CommitteesGet**](CommitteeApi.md#CommitteesGet) | **GET** /committees/ | 


# **CandidateCandidateIdCommitteesGet**
> CommitteeDetailPage CandidateCandidateIdCommitteesGet(api.key, candidate.id, designation=var.designation, sort.hide.null=FALSE, year=var.year, per.page=20, sort.nulls.last=FALSE, organization.type=var.organization.type, committee.type=var.committee.type, sort='name', sort.null.only=FALSE, filing.frequency=var.filing.frequency, cycle=var.cycle, page=1)



 This endpoint is useful for finding detailed information about a particular committee or filer. Use the `committee_id` to find the most recent information about the committee. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.year <- list(123) # array[integer] | A year that the committee was active— (after original registration date     or filing but before expiration date)
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.organization.type <- list("") # array[character] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock 
var.committee.type <- list("") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.sort <- 'name' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.filing.frequency <- list("") # array[character] | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived 
var.cycle <- list(123) # array[integer] |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommitteeApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidateCandidateIdCommitteesGet(var.api.key, var.candidate.id, designation=var.designation, sort.hide.null=var.sort.hide.null, year=var.year, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, organization.type=var.organization.type, committee.type=var.committee.type, sort=var.sort, sort.null.only=var.sort.null.only, filing.frequency=var.filing.frequency, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **year** | list( **integer** )| A year that the committee was active— (after original registration date     or filing but before expiration date) | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **organization.type** | Enum [, C, L, M, T, V, W] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 
 **committee.type** | Enum [, C, D, E, H, I, N, O, P, Q, S, U, V, W, X, Y, Z] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;name&#39;]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **filing.frequency** | Enum [, A, M, N, Q, T, W, -A, -T] | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived  | [optional] 
 **cycle** | list( **integer** )|  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteeDetailPage**](CommitteeDetailPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidateCandidateIdCommitteesHistoryCycleGet**
> CommitteeHistoryPage CandidateCandidateIdCommitteesHistoryCycleGet(api.key, cycle, candidate.id, designation=var.designation, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='-cycle', page=1)



 Explore a filer's characteristics over time. This can be particularly useful if the committees change treasurers, designation, or `committee_type`. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.cycle <- 56 # integer |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year. 
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-cycle' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommitteeApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidateCandidateIdCommitteesHistoryCycleGet(var.api.key, var.cycle, var.candidate.id, designation=var.designation, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **cycle** | **integer**|  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year.  | 
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-cycle&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteeHistoryPage**](CommitteeHistoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CandidateCandidateIdCommitteesHistoryGet**
> CommitteeHistoryPage CandidateCandidateIdCommitteesHistoryGet(api.key, candidate.id, designation=var.designation, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='-cycle', page=1)



 Explore a filer's characteristics over time. This can be particularly useful if the committees change treasurers, designation, or `committee_type`. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-cycle' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommitteeApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidateCandidateIdCommitteesHistoryGet(var.api.key, var.candidate.id, designation=var.designation, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-cycle&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteeHistoryPage**](CommitteeHistoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommitteeCommitteeIdGet**
> CommitteeDetailPage CommitteeCommitteeIdGet(api.key, committee.id, designation=var.designation, sort.hide.null=FALSE, year=var.year, per.page=20, sort.nulls.last=FALSE, organization.type=var.organization.type, committee.type=var.committee.type, sort='name', sort.null.only=FALSE, filing.frequency=var.filing.frequency, cycle=var.cycle, page=1)



 This endpoint is useful for finding detailed information about a particular committee or filer. Use the `committee_id` to find the most recent information about the committee. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.year <- list(123) # array[integer] | A year that the committee was active— (after original registration date     or filing but before expiration date)
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.organization.type <- list("") # array[character] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock 
var.committee.type <- list("") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.sort <- 'name' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.filing.frequency <- list("") # array[character] | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived 
var.cycle <- list(123) # array[integer] |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommitteeApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteeCommitteeIdGet(var.api.key, var.committee.id, designation=var.designation, sort.hide.null=var.sort.hide.null, year=var.year, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, organization.type=var.organization.type, committee.type=var.committee.type, sort=var.sort, sort.null.only=var.sort.null.only, filing.frequency=var.filing.frequency, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
 **designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **year** | list( **integer** )| A year that the committee was active— (after original registration date     or filing but before expiration date) | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **organization.type** | Enum [, C, L, M, T, V, W] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 
 **committee.type** | Enum [, C, D, E, H, I, N, O, P, Q, S, U, V, W, X, Y, Z] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;name&#39;]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **filing.frequency** | Enum [, A, M, N, Q, T, W, -A, -T] | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived  | [optional] 
 **cycle** | list( **integer** )|  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteeDetailPage**](CommitteeDetailPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommitteeCommitteeIdHistoryCycleGet**
> CommitteeHistoryPage CommitteeCommitteeIdHistoryCycleGet(api.key, cycle, committee.id, designation=var.designation, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='-cycle', page=1)



 Explore a filer's characteristics over time. This can be particularly useful if the committees change treasurers, designation, or `committee_type`. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.cycle <- 56 # integer |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-cycle' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommitteeApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteeCommitteeIdHistoryCycleGet(var.api.key, var.cycle, var.committee.id, designation=var.designation, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **cycle** | **integer**|  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year.  | 
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
 **designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-cycle&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteeHistoryPage**](CommitteeHistoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommitteeCommitteeIdHistoryGet**
> CommitteeHistoryPage CommitteeCommitteeIdHistoryGet(api.key, committee.id, designation=var.designation, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='-cycle', page=1)



 Explore a filer's characteristics over time. This can be particularly useful if the committees change treasurers, designation, or `committee_type`. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-cycle' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommitteeApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteeCommitteeIdHistoryGet(var.api.key, var.committee.id, designation=var.designation, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
 **designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-cycle&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteeHistoryPage**](CommitteeHistoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommitteesGet**
> CommitteePage CommitteesGet(api.key, designation=var.designation, per.page=20, committee.id=var.committee.id, organization.type=var.organization.type, committee.type=var.committee.type, sort='name', max.last.f1.date=var.max.last.f1.date, q=var.q, filing.frequency=var.filing.frequency, state=var.state, cycle=var.cycle, min.first.file.date=var.min.first.file.date, sponsor.candidate.id=var.sponsor.candidate.id, sort.hide.null=FALSE, year=var.year, max.first.file.date=var.max.first.file.date, treasurer.name=var.treasurer.name, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, party=var.party, min.last.f1.date=var.min.last.f1.date, page=1)



 Fetch basic information about committees and filers. Use parameters to filter for particular characteristics.  

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.designation <- list("") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.organization.type <- list("") # array[character] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock 
var.committee.type <- list("") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.sort <- 'name' # character | Provide a field to sort by. Use `-` for descending order. 
var.max.last.f1.date <- 'max.last.f1.date_example' # character | Filter for committees whose latest Form 1 was received on or before this date.
var.q <- list("inner_example") # array[character] | The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records.
var.filing.frequency <- list("") # array[character] | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived 
var.state <- list("inner_example") # array[character] | US state or territory
var.cycle <- list(123) # array[integer] |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year. 
var.min.first.file.date <- 'min.first.file.date_example' # character | Filter for committees whose first filing was received on or after this date.
var.sponsor.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. This is a filter for Leadership PAC sponsor. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.year <- list(123) # array[integer] | A year that the committee was active— (after original registration date     or filing but before expiration date)
var.max.first.file.date <- 'max.first.file.date_example' # character | Filter for committees whose first filing was received on or before this date.
var.treasurer.name <- list("inner_example") # array[character] | Name of the Committee's treasurer. If multiple treasurers for the committee, the most recent treasurer will be shown.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.min.last.f1.date <- 'min.last.f1.date_example' # character | Filter for committees whose latest Form 1 was received on or after this date.
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- CommitteeApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteesGet(var.api.key, designation=var.designation, per.page=var.per.page, committee.id=var.committee.id, organization.type=var.organization.type, committee.type=var.committee.type, sort=var.sort, max.last.f1.date=var.max.last.f1.date, q=var.q, filing.frequency=var.filing.frequency, state=var.state, cycle=var.cycle, min.first.file.date=var.min.first.file.date, sponsor.candidate.id=var.sponsor.candidate.id, sort.hide.null=var.sort.hide.null, year=var.year, max.first.file.date=var.max.first.file.date, treasurer.name=var.treasurer.name, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, party=var.party, min.last.f1.date=var.min.last.f1.date, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **designation** | Enum [, A, J, P, U, B, D] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **organization.type** | Enum [, C, L, M, T, V, W] | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 
 **committee.type** | Enum [, C, D, E, H, I, N, O, P, Q, S, U, V, W, X, Y, Z] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;name&#39;]
 **max.last.f1.date** | **character**| Filter for committees whose latest Form 1 was received on or before this date. | [optional] 
 **q** | list( **character** )| The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records. | [optional] 
 **filing.frequency** | Enum [, A, M, N, Q, T, W, -A, -T] | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived  | [optional] 
 **state** | list( **character** )| US state or territory | [optional] 
 **cycle** | list( **integer** )|  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **min.first.file.date** | **character**| Filter for committees whose first filing was received on or after this date. | [optional] 
 **sponsor.candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. This is a filter for Leadership PAC sponsor.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **year** | list( **integer** )| A year that the committee was active— (after original registration date     or filing but before expiration date) | [optional] 
 **max.first.file.date** | **character**| Filter for committees whose first filing was received on or before this date. | [optional] 
 **treasurer.name** | list( **character** )| Name of the Committee&#39;s treasurer. If multiple treasurers for the committee, the most recent treasurer will be shown. | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **min.last.f1.date** | **character**| Filter for committees whose latest Form 1 was received on or after this date. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteePage**](CommitteePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

