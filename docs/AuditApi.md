# AuditApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuditCaseGet**](AuditApi.md#AuditCaseGet) | **GET** /audit-case/ | 
[**AuditCategoryGet**](AuditApi.md#AuditCategoryGet) | **GET** /audit-category/ | 
[**AuditPrimaryCategoryGet**](AuditApi.md#AuditPrimaryCategoryGet) | **GET** /audit-primary-category/ | 
[**NamesAuditCandidatesGet**](AuditApi.md#NamesAuditCandidatesGet) | **GET** /names/audit_candidates/ | 
[**NamesAuditCommitteesGet**](AuditApi.md#NamesAuditCommitteesGet) | **GET** /names/audit_committees/ | 


# **AuditCaseGet**
> AuditCasePage AuditCaseGet(api.key, primary.category.id='all', max.election.cycle=var.max.election.cycle, per.page=20, committee.id=var.committee.id, committee.type=var.committee.type, sort=["-cycle","committee_name"], audit.case.id=var.audit.case.id, q=var.q, cycle=var.cycle, committee.designation=var.committee.designation, min.election.cycle=var.min.election.cycle, sort.hide.null=FALSE, sort.nulls.last=FALSE, qq=var.qq, candidate.id=var.candidate.id, sort.null.only=FALSE, sub.category.id='all', page=1, audit.id=var.audit.id)



 This endpoint contains Final Audit Reports approved by the Commission since inception. The search can be based on information about the audited committee (Name, FEC ID Number, Type,  Election Cycle) or the issues covered in the report. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.primary.category.id <- 'all' # character |  Audit category ID (table PK) 
var.max.election.cycle <- 56 # integer |  Filter records to only those that are applicable to a given two-year period. This cycle follows the traditional House election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. The cycle begins with an odd year and is named for its ending, even year. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.committee.type <- list("inner_example") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.sort <- list("inner_example") # array[character] | Provide a field to sort by. Use - for descending order.
var.audit.case.id <- list("inner_example") # array[character] |  Primary/foreign key for audit tables 
var.q <- list("inner_example") # array[character] | The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records.
var.cycle <- list(123) # array[integer] |  Filter records to only those that are applicable to a given two-year period. This cycle follows the traditional House election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. The cycle begins with an odd year and is named for its ending, even year. 
var.committee.designation <- 'committee.designation_example' # character | Type of committee:         - H or S - Congressional         - P - Presidential         - X or Y or Z - Party         - N or Q - PAC         - I - Independent expenditure         - O - Super PAC  
var.min.election.cycle <- 56 # integer |  Filter records to only those that are applicable to a given two-year period. This cycle follows the traditional House election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. The cycle begins with an odd year and is named for its ending, even year. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.qq <- list("inner_example") # array[character] | Name of candidate running for office
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sub.category.id <- 'all' # character |  The finding id of an audit. Finding are a category of broader issues. Each category has an unique ID. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.audit.id <- list(123) # array[integer] |  The audit issue. Each subcategory has an unique ID 

api.instance <- AuditApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$AuditCaseGet(var.api.key, primary.category.id=var.primary.category.id, max.election.cycle=var.max.election.cycle, per.page=var.per.page, committee.id=var.committee.id, committee.type=var.committee.type, sort=var.sort, audit.case.id=var.audit.case.id, q=var.q, cycle=var.cycle, committee.designation=var.committee.designation, min.election.cycle=var.min.election.cycle, sort.hide.null=var.sort.hide.null, sort.nulls.last=var.sort.nulls.last, qq=var.qq, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, sub.category.id=var.sub.category.id, page=var.page, audit.id=var.audit.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **primary.category.id** | **character**|  Audit category ID (table PK)  | [optional] [default to &#39;all&#39;]
 **max.election.cycle** | **integer**|  Filter records to only those that are applicable to a given two-year period. This cycle follows the traditional House election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **committee.type** | list( **character** )| The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **sort** | list( **character** )| Provide a field to sort by. Use - for descending order. | [optional] [default to [&quot;-cycle&quot;,&quot;committee_name&quot;]]
 **audit.case.id** | list( **character** )|  Primary/foreign key for audit tables  | [optional] 
 **q** | list( **character** )| The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records. | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that are applicable to a given two-year period. This cycle follows the traditional House election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **committee.designation** | **character**| Type of committee:         - H or S - Congressional         - P - Presidential         - X or Y or Z - Party         - N or Q - PAC         - I - Independent expenditure         - O - Super PAC   | [optional] 
 **min.election.cycle** | **integer**|  Filter records to only those that are applicable to a given two-year period. This cycle follows the traditional House election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **qq** | list( **character** )| Name of candidate running for office | [optional] 
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sub.category.id** | **character**|  The finding id of an audit. Finding are a category of broader issues. Each category has an unique ID.  | [optional] [default to &#39;all&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **audit.id** | list( **integer** )|  The audit issue. Each subcategory has an unique ID  | [optional] 

### Return type

[**AuditCasePage**](AuditCasePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **AuditCategoryGet**
> AuditCategoryPage AuditCategoryGet(api.key, primary.category.id=var.primary.category.id, primary.category.name=var.primary.category.name, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='primary_category_name', page=1)



 This lists the options for the categories and subcategories available in the /audit-search/ endpoint. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.primary.category.id <- list("inner_example") # array[character] |  Audit category ID (table PK) 
var.primary.category.name <- list("inner_example") # array[character] | Primary Audit Category     - No Findings or Issues/Not a Committee     - Net Outstanding Campaign/Convention Expenditures/Obligations     - Payments/Disgorgements     - Allocation Issues     - Prohibited Contributions     - Disclosure     - Recordkeeping     - Repayment to US Treasury     - Other     - Misstatement of Financial Activity     - Excessive Contributions     - Failure to File Reports/Schedules/Notices     - Loans     - Referred Findings Not Listed 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'primary_category_name' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- AuditApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$AuditCategoryGet(var.api.key, primary.category.id=var.primary.category.id, primary.category.name=var.primary.category.name, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **primary.category.id** | list( **character** )|  Audit category ID (table PK)  | [optional] 
 **primary.category.name** | list( **character** )| Primary Audit Category     - No Findings or Issues/Not a Committee     - Net Outstanding Campaign/Convention Expenditures/Obligations     - Payments/Disgorgements     - Allocation Issues     - Prohibited Contributions     - Disclosure     - Recordkeeping     - Repayment to US Treasury     - Other     - Misstatement of Financial Activity     - Excessive Contributions     - Failure to File Reports/Schedules/Notices     - Loans     - Referred Findings Not Listed  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;primary_category_name&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**AuditCategoryPage**](AuditCategoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **AuditPrimaryCategoryGet**
> AuditPrimaryCategoryPage AuditPrimaryCategoryGet(api.key, primary.category.id=var.primary.category.id, primary.category.name=var.primary.category.name, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, sort.null.only=FALSE, sort='primary_category_name', page=1)



 This lists the options for the primary categories available in the /audit-search/ endpoint. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.primary.category.id <- list("inner_example") # array[character] |  Audit category ID (table PK) 
var.primary.category.name <- list("inner_example") # array[character] | Primary Audit Category     - No Findings or Issues/Not a Committee     - Net Outstanding Campaign/Convention Expenditures/Obligations     - Payments/Disgorgements     - Allocation Issues     - Prohibited Contributions     - Disclosure     - Recordkeeping     - Repayment to US Treasury     - Other     - Misstatement of Financial Activity     - Excessive Contributions     - Failure to File Reports/Schedules/Notices     - Loans     - Referred Findings Not Listed 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- 'primary_category_name' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- AuditApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$AuditPrimaryCategoryGet(var.api.key, primary.category.id=var.primary.category.id, primary.category.name=var.primary.category.name, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, sort=var.sort, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **primary.category.id** | list( **character** )|  Audit category ID (table PK)  | [optional] 
 **primary.category.name** | list( **character** )| Primary Audit Category     - No Findings or Issues/Not a Committee     - Net Outstanding Campaign/Convention Expenditures/Obligations     - Payments/Disgorgements     - Allocation Issues     - Prohibited Contributions     - Disclosure     - Recordkeeping     - Repayment to US Treasury     - Other     - Misstatement of Financial Activity     - Excessive Contributions     - Failure to File Reports/Schedules/Notices     - Loans     - Referred Findings Not Listed  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;primary_category_name&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**AuditPrimaryCategoryPage**](AuditPrimaryCategoryPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **NamesAuditCandidatesGet**
> AuditCandidateSearchList NamesAuditCandidatesGet(q, api.key)



 Search for candidates or committees by name. If you're looking for information on a particular person or group, using a name to find the `candidate_id` or `committee_id` on this endpoint can be a helpful first step. 

### Example
```R
library(openapi)

var.q <- list("inner_example") # array[character] | Name (candidate or committee) to search for
var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 

api.instance <- AuditApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$NamesAuditCandidatesGet(var.q, var.api.key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | list( **character** )| Name (candidate or committee) to search for | 
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]

### Return type

[**AuditCandidateSearchList**](AuditCandidateSearchList.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **NamesAuditCommitteesGet**
> AuditCommitteeSearchList NamesAuditCommitteesGet(q, api.key)



 Search for candidates or committees by name. If you're looking for information on a particular person or group, using a name to find the `candidate_id` or `committee_id` on this endpoint can be a helpful first step. 

### Example
```R
library(openapi)

var.q <- list("inner_example") # array[character] | Name (candidate or committee) to search for
var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 

api.instance <- AuditApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$NamesAuditCommitteesGet(var.q, var.api.key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | list( **character** )| Name (candidate or committee) to search for | 
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]

### Return type

[**AuditCommitteeSearchList**](AuditCommitteeSearchList.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

