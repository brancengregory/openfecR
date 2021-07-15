# LegalApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LegalSearchGet**](LegalApi.md#LegalSearchGet) | **GET** /legal/search/ | 


# **LegalSearchGet**
> InlineResponseDefault1 LegalSearchGet(api.key, ao.no=var.ao.no, ao.status=var.ao.status, ao.max.request.date=var.ao.max.request.date, af.max.fd.date=var.af.max.fd.date, case.no=var.case.no, ao.name=var.ao.name, af.report.year=var.af.report.year, case.document.category=var.case.document.category, af.max.rtb.date=var.af.max.rtb.date, case.max.open.date=var.case.max.open.date, af.min.fd.date=var.af.min.fd.date, case.max.close.date=var.case.max.close.date, ao.category=var.ao.category, ao.requestor=var.ao.requestor, ao.statutory.citation=var.ao.statutory.citation, af.rtb.fine.amount=var.af.rtb.fine.amount, case.respondents=var.case.respondents, case.min.close.date=var.case.min.close.date, ao.min.issue.date=var.ao.min.issue.date, hits.returned=var.hits.returned, from.hit=var.from.hit, case.min.open.date=var.case.min.open.date, af.name=var.af.name, case.dispositions=var.case.dispositions, type=var.type, q=var.q, ao.entity.name=var.ao.entity.name, ao.regulatory.citation=var.ao.regulatory.citation, af.min.rtb.date=var.af.min.rtb.date, ao.max.issue.date=var.ao.max.issue.date, mur.type=var.mur.type, af.committee.id=var.af.committee.id, ao.min.request.date=var.ao.min.request.date, case.election.cycles=var.case.election.cycles, af.fd.fine.amount=var.af.fd.fine.amount, ao.is.pending=var.ao.is.pending, ao.citation.require.all=var.ao.citation.require.all, ao.requestor.type=var.ao.requestor.type)



 Search legal documents by document type, or across all document types using keywords, parameter values and ranges. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.ao.no <- list("inner_example") # array[character] | Force advisory opinion number
var.ao.status <- 'ao.status_example' # character | Status of AO (pending, withdrawn, or final)
var.ao.max.request.date <- 'ao.max.request.date_example' # character | Latest request date of advisory opinion
var.af.max.fd.date <- 'af.max.fd.date_example' # character | Filter cases by latest Final Determination date
var.case.no <- list("inner_example") # array[character] | Enforcement matter case number
var.ao.name <- list("inner_example") # array[character] | Force advisory opinion name
var.af.report.year <- 'af.report.year_example' # character | Admin fine report year
var.case.document.category <- list("inner_example") # array[character] | Filter cases by category of associated documents
var.af.max.rtb.date <- 'af.max.rtb.date_example' # character | Filter cases by latest Reason to Believe date
var.case.max.open.date <- 'case.max.open.date_example' # character | Filter cases by latest date opened
var.af.min.fd.date <- 'af.min.fd.date_example' # character | Filter cases by earliest Final Determination date
var.case.max.close.date <- 'case.max.close.date_example' # character | Filter cases by latest date closed
var.ao.category <- list("F") # array[character] | Category of the document
var.ao.requestor <- 'ao.requestor_example' # character | The requestor of the advisory opinion
var.ao.statutory.citation <- list("inner_example") # array[character] | Search for statutory citations
var.af.rtb.fine.amount <- 56 # integer | Filter cases by Reason to Believe fine amount
var.case.respondents <- 'case.respondents_example' # character | Filter cases by respondents
var.case.min.close.date <- 'case.min.close.date_example' # character | Filter cases by earliest date closed
var.ao.min.issue.date <- 'ao.min.issue.date_example' # character | Earliest issue date of advisory opinion
var.hits.returned <- 56 # integer | Number of results to return (max 10).
var.from.hit <- 56 # integer | Get results starting from this index.
var.case.min.open.date <- 'case.min.open.date_example' # character | Filter cases by earliest date opened
var.af.name <- list("inner_example") # array[character] | Admin fine committee name
var.case.dispositions <- list("inner_example") # array[character] | Filter cases by dispositions
var.type <- 'type_example' # character | Document type to refine search by
var.q <- 'q_example' # character | Text to search legal documents for.
var.ao.entity.name <- list("inner_example") # array[character] | Search by name of commenter or representative
var.ao.regulatory.citation <- list("inner_example") # array[character] | Search for regulatory citations
var.af.min.rtb.date <- 'af.min.rtb.date_example' # character | Filter cases by earliest Reason to Believe date
var.ao.max.issue.date <- 'ao.max.issue.date_example' # character | Latest issue date of advisory opinion
var.mur.type <- 'mur.type_example' # character | Mur type
var.af.committee.id <- 'af.committee.id_example' # character | Admin fine committee ID
var.ao.min.request.date <- 'ao.min.request.date_example' # character | Earliest request date of advisory opinion
var.case.election.cycles <- 56 # integer | Filter cases by election cycles
var.af.fd.fine.amount <- 56 # integer | Filter cases by Final Determination fine amount
var.ao.is.pending <- 'ao.is.pending_example' # character | AO is pending
var.ao.citation.require.all <- 'ao.citation.require.all_example' # character | Require all citations to be in document (default behavior is any)
var.ao.requestor.type <- list(123) # array[integer] | Code of the advisory opinion requestor type.

api.instance <- LegalApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$LegalSearchGet(var.api.key, ao.no=var.ao.no, ao.status=var.ao.status, ao.max.request.date=var.ao.max.request.date, af.max.fd.date=var.af.max.fd.date, case.no=var.case.no, ao.name=var.ao.name, af.report.year=var.af.report.year, case.document.category=var.case.document.category, af.max.rtb.date=var.af.max.rtb.date, case.max.open.date=var.case.max.open.date, af.min.fd.date=var.af.min.fd.date, case.max.close.date=var.case.max.close.date, ao.category=var.ao.category, ao.requestor=var.ao.requestor, ao.statutory.citation=var.ao.statutory.citation, af.rtb.fine.amount=var.af.rtb.fine.amount, case.respondents=var.case.respondents, case.min.close.date=var.case.min.close.date, ao.min.issue.date=var.ao.min.issue.date, hits.returned=var.hits.returned, from.hit=var.from.hit, case.min.open.date=var.case.min.open.date, af.name=var.af.name, case.dispositions=var.case.dispositions, type=var.type, q=var.q, ao.entity.name=var.ao.entity.name, ao.regulatory.citation=var.ao.regulatory.citation, af.min.rtb.date=var.af.min.rtb.date, ao.max.issue.date=var.ao.max.issue.date, mur.type=var.mur.type, af.committee.id=var.af.committee.id, ao.min.request.date=var.ao.min.request.date, case.election.cycles=var.case.election.cycles, af.fd.fine.amount=var.af.fd.fine.amount, ao.is.pending=var.ao.is.pending, ao.citation.require.all=var.ao.citation.require.all, ao.requestor.type=var.ao.requestor.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **ao.no** | list( **character** )| Force advisory opinion number | [optional] 
 **ao.status** | **character**| Status of AO (pending, withdrawn, or final) | [optional] 
 **ao.max.request.date** | **character**| Latest request date of advisory opinion | [optional] 
 **af.max.fd.date** | **character**| Filter cases by latest Final Determination date | [optional] 
 **case.no** | list( **character** )| Enforcement matter case number | [optional] 
 **ao.name** | list( **character** )| Force advisory opinion name | [optional] 
 **af.report.year** | **character**| Admin fine report year | [optional] 
 **case.document.category** | list( **character** )| Filter cases by category of associated documents | [optional] 
 **af.max.rtb.date** | **character**| Filter cases by latest Reason to Believe date | [optional] 
 **case.max.open.date** | **character**| Filter cases by latest date opened | [optional] 
 **af.min.fd.date** | **character**| Filter cases by earliest Final Determination date | [optional] 
 **case.max.close.date** | **character**| Filter cases by latest date closed | [optional] 
 **ao.category** | Enum [F, V, D, R, W, C, S] | Category of the document | [optional] 
 **ao.requestor** | **character**| The requestor of the advisory opinion | [optional] 
 **ao.statutory.citation** | list( **character** )| Search for statutory citations | [optional] 
 **af.rtb.fine.amount** | **integer**| Filter cases by Reason to Believe fine amount | [optional] 
 **case.respondents** | **character**| Filter cases by respondents | [optional] 
 **case.min.close.date** | **character**| Filter cases by earliest date closed | [optional] 
 **ao.min.issue.date** | **character**| Earliest issue date of advisory opinion | [optional] 
 **hits.returned** | **integer**| Number of results to return (max 10). | [optional] 
 **from.hit** | **integer**| Get results starting from this index. | [optional] 
 **case.min.open.date** | **character**| Filter cases by earliest date opened | [optional] 
 **af.name** | list( **character** )| Admin fine committee name | [optional] 
 **case.dispositions** | list( **character** )| Filter cases by dispositions | [optional] 
 **type** | **character**| Document type to refine search by | [optional] 
 **q** | **character**| Text to search legal documents for. | [optional] 
 **ao.entity.name** | list( **character** )| Search by name of commenter or representative | [optional] 
 **ao.regulatory.citation** | list( **character** )| Search for regulatory citations | [optional] 
 **af.min.rtb.date** | **character**| Filter cases by earliest Reason to Believe date | [optional] 
 **ao.max.issue.date** | **character**| Latest issue date of advisory opinion | [optional] 
 **mur.type** | **character**| Mur type | [optional] 
 **af.committee.id** | **character**| Admin fine committee ID | [optional] 
 **ao.min.request.date** | **character**| Earliest request date of advisory opinion | [optional] 
 **case.election.cycles** | **integer**| Filter cases by election cycles | [optional] 
 **af.fd.fine.amount** | **integer**| Filter cases by Final Determination fine amount | [optional] 
 **ao.is.pending** | **character**| AO is pending | [optional] 
 **ao.citation.require.all** | **character**| Require all citations to be in document (default behavior is any) | [optional] 
 **ao.requestor.type** | Enum [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16] | Code of the advisory opinion requestor type. | [optional] 

### Return type

[**InlineResponseDefault1**](inline_response_default_1.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** | Legal search results |  -  |

