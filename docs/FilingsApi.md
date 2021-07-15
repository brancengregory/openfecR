# FilingsApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CandidateCandidateIdFilingsGet**](FilingsApi.md#CandidateCandidateIdFilingsGet) | **GET** /candidate/{candidate_id}/filings/ | 
[**CommitteeCommitteeIdFilingsGet**](FilingsApi.md#CommitteeCommitteeIdFilingsGet) | **GET** /committee/{committee_id}/filings/ | 
[**FilingsGet**](FilingsApi.md#FilingsGet) | **GET** /filings/ | 
[**OperationsLogGet**](FilingsApi.md#OperationsLogGet) | **GET** /operations-log/ | 


# **CandidateCandidateIdFilingsGet**
> FilingsPage CandidateCandidateIdFilingsGet(api.key, candidate.id, is.amended=var.is.amended, amendment.indicator=var.amendment.indicator, filer.type=var.filer.type, per.page=20, committee.type=var.committee.type, sort=["-receipt_date"], primary.general.indicator=var.primary.general.indicator, form.type=var.form.type, state=var.state, form.category=var.form.category, cycle=var.cycle, report.year=var.report.year, min.receipt.date=var.min.receipt.date, beginning.image.number=var.beginning.image.number, sort.hide.null=FALSE, max.receipt.date=var.max.receipt.date, file.number=var.file.number, sort.nulls.last=FALSE, district=var.district, request.type=var.request.type, sort.null.only=FALSE, document.type=var.document.type, office=var.office, most.recent=var.most.recent, report.type=var.report.type, party=var.party, page=1)



 All official records and reports filed by or delivered to the FEC.  Note: because the filings data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.is.amended <- 'is.amended_example' # character |  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment. 
var.amendment.indicator <- list("") # array[character] | Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment. 
var.filer.type <- 'filer.type_example' # character | The method used to file with the FEC, either electronic or on paper.
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.committee.type <- 'committee.type_example' # character | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.sort <- list("inner_example") # array[character] | Provide a field to sort by. Use - for descending order.
var.primary.general.indicator <- list("inner_example") # array[character] |  Primary, general or special election indicator. 
var.form.type <- list("inner_example") # array[character] | The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information 
var.state <- list("inner_example") # array[character] | US state or territory where a candidate runs for office
var.form.category <- list("inner_example") # array[character] |  The forms filed are categorized based on the nature of the filing:     - REPORT F3, F3X, F3P, F3L, F4, F5, F7, F13     - NOTICE F5, F24, F6, F9, F10, F11     - STATEMENT F1, F2     - OTHER F1M, F8, F99, F12, FRQ 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.report.year <- list(123) # array[integer] |  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date. 
var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.beginning.image.number <- list("inner_example") # array[character] |  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.file.number <- list(123) # array[integer] | Filing ID number
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.request.type <- list("inner_example") # array[character] | Requests for additional information (RFAIs) sent to filers. The request type is based on the type of document filed:     - 1 Statement of Organization     - 2 Report of Receipts and Expenditures (Form 3 and 3X)     - 3 Second Notice - Reports     - 4 Request for Additional Information     - 5 Informational - Reports     - 6 Second Notice - Statement of Organization     - 7 Failure to File     - 8 From Public Disclosure     - 9 From Multi Candidate Status 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.document.type <- list("inner_example") # array[character] |  The type of document for documents other than reports:     - 2 24 Hour Contribution Notice     - 4 48 Hour Contribution Notice     - A Debt Settlement Statement     - B Acknowledgment of Receipt of Debt Settlement Statement     - C RFAI: Debt Settlement First Notice     - D Commission Debt Settlement Review     - E Commission Response TO Debt Settlement Request     - F Administrative Termination     - G Debt Settlement Plan Amendment     - H Disavowal Notice     - I Disavowal Response     - J Conduit Report     - K Termination Approval     - L Repeat Non-Filer Notice     - M Filing Frequency Change Notice     - N Paper Amendment to Electronic Report     - O Acknowledgment of Filing Frequency Change     - S RFAI: Debt Settlement Second     - T Miscellaneous Report TO FEC     - V Repeat Violation Notice (441A OR 441B)     - P Notice of Paper Filing     - R F3L Filing Frequency Change Notice     - Q Acknowledgment of F3L Filing Frequency Change     - U Unregistered Committee Notice 
var.office <- list("") # array[character] | Federal office candidate runs for: H, S or P
var.most.recent <- 'most.recent_example' # character |  Report is either new or is the most-recently filed amendment 
var.report.type <- list("inner_example") # array[character] | Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE) 
var.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FilingsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CandidateCandidateIdFilingsGet(var.api.key, var.candidate.id, is.amended=var.is.amended, amendment.indicator=var.amendment.indicator, filer.type=var.filer.type, per.page=var.per.page, committee.type=var.committee.type, sort=var.sort, primary.general.indicator=var.primary.general.indicator, form.type=var.form.type, state=var.state, form.category=var.form.category, cycle=var.cycle, report.year=var.report.year, min.receipt.date=var.min.receipt.date, beginning.image.number=var.beginning.image.number, sort.hide.null=var.sort.hide.null, max.receipt.date=var.max.receipt.date, file.number=var.file.number, sort.nulls.last=var.sort.nulls.last, district=var.district, request.type=var.request.type, sort.null.only=var.sort.null.only, document.type=var.document.type, office=var.office, most.recent=var.most.recent, report.type=var.report.type, party=var.party, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
 **is.amended** | **character**|  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment.  | [optional] 
 **amendment.indicator** | Enum [, N, A, T, C, M, S] | Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment.  | [optional] 
 **filer.type** | Enum [e-file, paper] | The method used to file with the FEC, either electronic or on paper. | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **committee.type** | **character**| The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **sort** | list( **character** )| Provide a field to sort by. Use - for descending order. | [optional] [default to [&quot;-receipt_date&quot;]]
 **primary.general.indicator** | list( **character** )|  Primary, general or special election indicator.  | [optional] 
 **form.type** | list( **character** )| The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information  | [optional] 
 **state** | list( **character** )| US state or territory where a candidate runs for office | [optional] 
 **form.category** | list( **character** )|  The forms filed are categorized based on the nature of the filing:     - REPORT F3, F3X, F3P, F3L, F4, F5, F7, F13     - NOTICE F5, F24, F6, F9, F10, F11     - STATEMENT F1, F2     - OTHER F1M, F8, F99, F12, FRQ  | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **report.year** | list( **integer** )|  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date.  | [optional] 
 **min.receipt.date** | **character**|  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **beginning.image.number** | list( **character** )|  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.receipt.date** | **character**|  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **file.number** | list( **integer** )| Filing ID number | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **request.type** | list( **character** )| Requests for additional information (RFAIs) sent to filers. The request type is based on the type of document filed:     - 1 Statement of Organization     - 2 Report of Receipts and Expenditures (Form 3 and 3X)     - 3 Second Notice - Reports     - 4 Request for Additional Information     - 5 Informational - Reports     - 6 Second Notice - Statement of Organization     - 7 Failure to File     - 8 From Public Disclosure     - 9 From Multi Candidate Status  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **document.type** | list( **character** )|  The type of document for documents other than reports:     - 2 24 Hour Contribution Notice     - 4 48 Hour Contribution Notice     - A Debt Settlement Statement     - B Acknowledgment of Receipt of Debt Settlement Statement     - C RFAI: Debt Settlement First Notice     - D Commission Debt Settlement Review     - E Commission Response TO Debt Settlement Request     - F Administrative Termination     - G Debt Settlement Plan Amendment     - H Disavowal Notice     - I Disavowal Response     - J Conduit Report     - K Termination Approval     - L Repeat Non-Filer Notice     - M Filing Frequency Change Notice     - N Paper Amendment to Electronic Report     - O Acknowledgment of Filing Frequency Change     - S RFAI: Debt Settlement Second     - T Miscellaneous Report TO FEC     - V Repeat Violation Notice (441A OR 441B)     - P Notice of Paper Filing     - R F3L Filing Frequency Change Notice     - Q Acknowledgment of F3L Filing Frequency Change     - U Unregistered Committee Notice  | [optional] 
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **most.recent** | **character**|  Report is either new or is the most-recently filed amendment  | [optional] 
 **report.type** | list( **character** )| Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE)  | [optional] 
 **party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**FilingsPage**](FilingsPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommitteeCommitteeIdFilingsGet**
> FilingsPage CommitteeCommitteeIdFilingsGet(api.key, committee.id, is.amended=var.is.amended, amendment.indicator=var.amendment.indicator, filer.type=var.filer.type, per.page=20, committee.type=var.committee.type, sort=["-receipt_date"], primary.general.indicator=var.primary.general.indicator, form.type=var.form.type, state=var.state, form.category=var.form.category, cycle=var.cycle, report.year=var.report.year, min.receipt.date=var.min.receipt.date, beginning.image.number=var.beginning.image.number, sort.hide.null=FALSE, max.receipt.date=var.max.receipt.date, file.number=var.file.number, sort.nulls.last=FALSE, district=var.district, request.type=var.request.type, sort.null.only=FALSE, document.type=var.document.type, office=var.office, most.recent=var.most.recent, report.type=var.report.type, party=var.party, page=1)



 All official records and reports filed by or delivered to the FEC.  Note: because the filings data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.is.amended <- 'is.amended_example' # character |  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment. 
var.amendment.indicator <- list("") # array[character] | Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment. 
var.filer.type <- 'filer.type_example' # character | The method used to file with the FEC, either electronic or on paper.
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.committee.type <- 'committee.type_example' # character | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.sort <- list("inner_example") # array[character] | Provide a field to sort by. Use - for descending order.
var.primary.general.indicator <- list("inner_example") # array[character] |  Primary, general or special election indicator. 
var.form.type <- list("inner_example") # array[character] | The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information 
var.state <- list("inner_example") # array[character] | US state or territory where a candidate runs for office
var.form.category <- list("inner_example") # array[character] |  The forms filed are categorized based on the nature of the filing:     - REPORT F3, F3X, F3P, F3L, F4, F5, F7, F13     - NOTICE F5, F24, F6, F9, F10, F11     - STATEMENT F1, F2     - OTHER F1M, F8, F99, F12, FRQ 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.report.year <- list(123) # array[integer] |  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date. 
var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.beginning.image.number <- list("inner_example") # array[character] |  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.file.number <- list(123) # array[integer] | Filing ID number
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.request.type <- list("inner_example") # array[character] | Requests for additional information (RFAIs) sent to filers. The request type is based on the type of document filed:     - 1 Statement of Organization     - 2 Report of Receipts and Expenditures (Form 3 and 3X)     - 3 Second Notice - Reports     - 4 Request for Additional Information     - 5 Informational - Reports     - 6 Second Notice - Statement of Organization     - 7 Failure to File     - 8 From Public Disclosure     - 9 From Multi Candidate Status 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.document.type <- list("inner_example") # array[character] |  The type of document for documents other than reports:     - 2 24 Hour Contribution Notice     - 4 48 Hour Contribution Notice     - A Debt Settlement Statement     - B Acknowledgment of Receipt of Debt Settlement Statement     - C RFAI: Debt Settlement First Notice     - D Commission Debt Settlement Review     - E Commission Response TO Debt Settlement Request     - F Administrative Termination     - G Debt Settlement Plan Amendment     - H Disavowal Notice     - I Disavowal Response     - J Conduit Report     - K Termination Approval     - L Repeat Non-Filer Notice     - M Filing Frequency Change Notice     - N Paper Amendment to Electronic Report     - O Acknowledgment of Filing Frequency Change     - S RFAI: Debt Settlement Second     - T Miscellaneous Report TO FEC     - V Repeat Violation Notice (441A OR 441B)     - P Notice of Paper Filing     - R F3L Filing Frequency Change Notice     - Q Acknowledgment of F3L Filing Frequency Change     - U Unregistered Committee Notice 
var.office <- list("") # array[character] | Federal office candidate runs for: H, S or P
var.most.recent <- 'most.recent_example' # character |  Report is either new or is the most-recently filed amendment 
var.report.type <- list("inner_example") # array[character] | Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE) 
var.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FilingsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteeCommitteeIdFilingsGet(var.api.key, var.committee.id, is.amended=var.is.amended, amendment.indicator=var.amendment.indicator, filer.type=var.filer.type, per.page=var.per.page, committee.type=var.committee.type, sort=var.sort, primary.general.indicator=var.primary.general.indicator, form.type=var.form.type, state=var.state, form.category=var.form.category, cycle=var.cycle, report.year=var.report.year, min.receipt.date=var.min.receipt.date, beginning.image.number=var.beginning.image.number, sort.hide.null=var.sort.hide.null, max.receipt.date=var.max.receipt.date, file.number=var.file.number, sort.nulls.last=var.sort.nulls.last, district=var.district, request.type=var.request.type, sort.null.only=var.sort.null.only, document.type=var.document.type, office=var.office, most.recent=var.most.recent, report.type=var.report.type, party=var.party, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
 **is.amended** | **character**|  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment.  | [optional] 
 **amendment.indicator** | Enum [, N, A, T, C, M, S] | Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment.  | [optional] 
 **filer.type** | Enum [e-file, paper] | The method used to file with the FEC, either electronic or on paper. | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **committee.type** | **character**| The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **sort** | list( **character** )| Provide a field to sort by. Use - for descending order. | [optional] [default to [&quot;-receipt_date&quot;]]
 **primary.general.indicator** | list( **character** )|  Primary, general or special election indicator.  | [optional] 
 **form.type** | list( **character** )| The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information  | [optional] 
 **state** | list( **character** )| US state or territory where a candidate runs for office | [optional] 
 **form.category** | list( **character** )|  The forms filed are categorized based on the nature of the filing:     - REPORT F3, F3X, F3P, F3L, F4, F5, F7, F13     - NOTICE F5, F24, F6, F9, F10, F11     - STATEMENT F1, F2     - OTHER F1M, F8, F99, F12, FRQ  | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **report.year** | list( **integer** )|  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date.  | [optional] 
 **min.receipt.date** | **character**|  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **beginning.image.number** | list( **character** )|  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.receipt.date** | **character**|  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **file.number** | list( **integer** )| Filing ID number | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **request.type** | list( **character** )| Requests for additional information (RFAIs) sent to filers. The request type is based on the type of document filed:     - 1 Statement of Organization     - 2 Report of Receipts and Expenditures (Form 3 and 3X)     - 3 Second Notice - Reports     - 4 Request for Additional Information     - 5 Informational - Reports     - 6 Second Notice - Statement of Organization     - 7 Failure to File     - 8 From Public Disclosure     - 9 From Multi Candidate Status  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **document.type** | list( **character** )|  The type of document for documents other than reports:     - 2 24 Hour Contribution Notice     - 4 48 Hour Contribution Notice     - A Debt Settlement Statement     - B Acknowledgment of Receipt of Debt Settlement Statement     - C RFAI: Debt Settlement First Notice     - D Commission Debt Settlement Review     - E Commission Response TO Debt Settlement Request     - F Administrative Termination     - G Debt Settlement Plan Amendment     - H Disavowal Notice     - I Disavowal Response     - J Conduit Report     - K Termination Approval     - L Repeat Non-Filer Notice     - M Filing Frequency Change Notice     - N Paper Amendment to Electronic Report     - O Acknowledgment of Filing Frequency Change     - S RFAI: Debt Settlement Second     - T Miscellaneous Report TO FEC     - V Repeat Violation Notice (441A OR 441B)     - P Notice of Paper Filing     - R F3L Filing Frequency Change Notice     - Q Acknowledgment of F3L Filing Frequency Change     - U Unregistered Committee Notice  | [optional] 
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **most.recent** | **character**|  Report is either new or is the most-recently filed amendment  | [optional] 
 **report.type** | list( **character** )| Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE)  | [optional] 
 **party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**FilingsPage**](FilingsPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **FilingsGet**
> FilingsPage FilingsGet(api.key, is.amended=var.is.amended, amendment.indicator=var.amendment.indicator, filer.type=var.filer.type, per.page=20, committee.id=var.committee.id, sort=["-receipt_date"], committee.type=var.committee.type, primary.general.indicator=var.primary.general.indicator, form.type=var.form.type, state=var.state, form.category=var.form.category, cycle=var.cycle, report.year=var.report.year, min.receipt.date=var.min.receipt.date, beginning.image.number=var.beginning.image.number, sort.hide.null=FALSE, max.receipt.date=var.max.receipt.date, file.number=var.file.number, sort.nulls.last=FALSE, district=var.district, candidate.id=var.candidate.id, request.type=var.request.type, sort.null.only=FALSE, document.type=var.document.type, office=var.office, most.recent=var.most.recent, report.type=var.report.type, party=var.party, page=1)



 All official records and reports filed by or delivered to the FEC.  Note: because the filings data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.is.amended <- 'is.amended_example' # character |  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment. 
var.amendment.indicator <- list("") # array[character] | Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment. 
var.filer.type <- 'filer.type_example' # character | The method used to file with the FEC, either electronic or on paper.
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- list("inner_example") # array[character] | Provide a field to sort by. Use - for descending order.
var.committee.type <- 'committee.type_example' # character | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.primary.general.indicator <- list("inner_example") # array[character] |  Primary, general or special election indicator. 
var.form.type <- list("inner_example") # array[character] | The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information 
var.state <- list("inner_example") # array[character] | US state or territory where a candidate runs for office
var.form.category <- list("inner_example") # array[character] |  The forms filed are categorized based on the nature of the filing:     - REPORT F3, F3X, F3P, F3L, F4, F5, F7, F13     - NOTICE F5, F24, F6, F9, F10, F11     - STATEMENT F1, F2     - OTHER F1M, F8, F99, F12, FRQ 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.report.year <- list(123) # array[integer] |  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date. 
var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.beginning.image.number <- list("inner_example") # array[character] |  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.file.number <- list(123) # array[integer] | Filing ID number
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.request.type <- list("inner_example") # array[character] | Requests for additional information (RFAIs) sent to filers. The request type is based on the type of document filed:     - 1 Statement of Organization     - 2 Report of Receipts and Expenditures (Form 3 and 3X)     - 3 Second Notice - Reports     - 4 Request for Additional Information     - 5 Informational - Reports     - 6 Second Notice - Statement of Organization     - 7 Failure to File     - 8 From Public Disclosure     - 9 From Multi Candidate Status 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.document.type <- list("inner_example") # array[character] |  The type of document for documents other than reports:     - 2 24 Hour Contribution Notice     - 4 48 Hour Contribution Notice     - A Debt Settlement Statement     - B Acknowledgment of Receipt of Debt Settlement Statement     - C RFAI: Debt Settlement First Notice     - D Commission Debt Settlement Review     - E Commission Response TO Debt Settlement Request     - F Administrative Termination     - G Debt Settlement Plan Amendment     - H Disavowal Notice     - I Disavowal Response     - J Conduit Report     - K Termination Approval     - L Repeat Non-Filer Notice     - M Filing Frequency Change Notice     - N Paper Amendment to Electronic Report     - O Acknowledgment of Filing Frequency Change     - S RFAI: Debt Settlement Second     - T Miscellaneous Report TO FEC     - V Repeat Violation Notice (441A OR 441B)     - P Notice of Paper Filing     - R F3L Filing Frequency Change Notice     - Q Acknowledgment of F3L Filing Frequency Change     - U Unregistered Committee Notice 
var.office <- list("") # array[character] | Federal office candidate runs for: H, S or P
var.most.recent <- 'most.recent_example' # character |  Report is either new or is the most-recently filed amendment 
var.report.type <- list("inner_example") # array[character] | Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE) 
var.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FilingsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$FilingsGet(var.api.key, is.amended=var.is.amended, amendment.indicator=var.amendment.indicator, filer.type=var.filer.type, per.page=var.per.page, committee.id=var.committee.id, sort=var.sort, committee.type=var.committee.type, primary.general.indicator=var.primary.general.indicator, form.type=var.form.type, state=var.state, form.category=var.form.category, cycle=var.cycle, report.year=var.report.year, min.receipt.date=var.min.receipt.date, beginning.image.number=var.beginning.image.number, sort.hide.null=var.sort.hide.null, max.receipt.date=var.max.receipt.date, file.number=var.file.number, sort.nulls.last=var.sort.nulls.last, district=var.district, candidate.id=var.candidate.id, request.type=var.request.type, sort.null.only=var.sort.null.only, document.type=var.document.type, office=var.office, most.recent=var.most.recent, report.type=var.report.type, party=var.party, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **is.amended** | **character**|  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment.  | [optional] 
 **amendment.indicator** | Enum [, N, A, T, C, M, S] | Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment.  | [optional] 
 **filer.type** | Enum [e-file, paper] | The method used to file with the FEC, either electronic or on paper. | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | list( **character** )| Provide a field to sort by. Use - for descending order. | [optional] [default to [&quot;-receipt_date&quot;]]
 **committee.type** | **character**| The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **primary.general.indicator** | list( **character** )|  Primary, general or special election indicator.  | [optional] 
 **form.type** | list( **character** )| The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information  | [optional] 
 **state** | list( **character** )| US state or territory where a candidate runs for office | [optional] 
 **form.category** | list( **character** )|  The forms filed are categorized based on the nature of the filing:     - REPORT F3, F3X, F3P, F3L, F4, F5, F7, F13     - NOTICE F5, F24, F6, F9, F10, F11     - STATEMENT F1, F2     - OTHER F1M, F8, F99, F12, FRQ  | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **report.year** | list( **integer** )|  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date.  | [optional] 
 **min.receipt.date** | **character**|  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **beginning.image.number** | list( **character** )|  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.receipt.date** | **character**|  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **file.number** | list( **integer** )| Filing ID number | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **request.type** | list( **character** )| Requests for additional information (RFAIs) sent to filers. The request type is based on the type of document filed:     - 1 Statement of Organization     - 2 Report of Receipts and Expenditures (Form 3 and 3X)     - 3 Second Notice - Reports     - 4 Request for Additional Information     - 5 Informational - Reports     - 6 Second Notice - Statement of Organization     - 7 Failure to File     - 8 From Public Disclosure     - 9 From Multi Candidate Status  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **document.type** | list( **character** )|  The type of document for documents other than reports:     - 2 24 Hour Contribution Notice     - 4 48 Hour Contribution Notice     - A Debt Settlement Statement     - B Acknowledgment of Receipt of Debt Settlement Statement     - C RFAI: Debt Settlement First Notice     - D Commission Debt Settlement Review     - E Commission Response TO Debt Settlement Request     - F Administrative Termination     - G Debt Settlement Plan Amendment     - H Disavowal Notice     - I Disavowal Response     - J Conduit Report     - K Termination Approval     - L Repeat Non-Filer Notice     - M Filing Frequency Change Notice     - N Paper Amendment to Electronic Report     - O Acknowledgment of Filing Frequency Change     - S RFAI: Debt Settlement Second     - T Miscellaneous Report TO FEC     - V Repeat Violation Notice (441A OR 441B)     - P Notice of Paper Filing     - R F3L Filing Frequency Change Notice     - Q Acknowledgment of F3L Filing Frequency Change     - U Unregistered Committee Notice  | [optional] 
 **office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **most.recent** | **character**|  Report is either new or is the most-recently filed amendment  | [optional] 
 **report.type** | list( **character** )| Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE)  | [optional] 
 **party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**FilingsPage**](FilingsPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **OperationsLogGet**
> OperationsLogPage OperationsLogGet(api.key, amendment.indicator=var.amendment.indicator, max.transaction.data.complete.date=var.max.transaction.data.complete.date, max.coverage.end.date=var.max.coverage.end.date, per.page=20, status.num=var.status.num, min.coverage.end.date=var.min.coverage.end.date, sort=["-report_year"], min.transaction.data.complete.date=var.min.transaction.data.complete.date, form.type=var.form.type, candidate.committee.id=var.candidate.committee.id, report.year=var.report.year, min.receipt.date=var.min.receipt.date, beginning.image.number=var.beginning.image.number, sort.hide.null=FALSE, max.receipt.date=var.max.receipt.date, sort.nulls.last=FALSE, sort.null.only=FALSE, report.type=var.report.type, page=1)



 The Operations log contains details of each report loaded into the database. It is primarily used as status check to determine when all of the data processes, from initial entry through review are complete. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.amendment.indicator <- list("inner_example") # array[character] | Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment. 
var.max.transaction.data.complete.date <- 'max.transaction.data.complete.date_example' # character |  Select all filings processed completely before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.max.coverage.end.date <- 'max.coverage.end.date_example' # character |  Ending date of the reporting period before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.status.num <- list("0") # array[character] |  Status of the transactional report.     -0- Transaction is entered            into the system.           But not verified.     -1- Transaction is verified. 
var.min.coverage.end.date <- 'min.coverage.end.date_example' # character |  Ending date of the reporting period after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort <- list("inner_example") # array[character] | Provide a field to sort by. Use - for descending order.
var.min.transaction.data.complete.date <- 'min.transaction.data.complete.date_example' # character |  Select all filings processed completely after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.form.type <- list("inner_example") # array[character] | The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information 
var.candidate.committee.id <- list("inner_example") # array[character] |  A unique identifier of the registered filer. 
var.report.year <- list(123) # array[integer] |  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date. 
var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.beginning.image.number <- list("inner_example") # array[character] |  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.report.type <- list("inner_example") # array[character] | Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE) 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FilingsApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$OperationsLogGet(var.api.key, amendment.indicator=var.amendment.indicator, max.transaction.data.complete.date=var.max.transaction.data.complete.date, max.coverage.end.date=var.max.coverage.end.date, per.page=var.per.page, status.num=var.status.num, min.coverage.end.date=var.min.coverage.end.date, sort=var.sort, min.transaction.data.complete.date=var.min.transaction.data.complete.date, form.type=var.form.type, candidate.committee.id=var.candidate.committee.id, report.year=var.report.year, min.receipt.date=var.min.receipt.date, beginning.image.number=var.beginning.image.number, sort.hide.null=var.sort.hide.null, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, report.type=var.report.type, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **amendment.indicator** | list( **character** )| Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment.  | [optional] 
 **max.transaction.data.complete.date** | **character**|  Select all filings processed completely before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **max.coverage.end.date** | **character**|  Ending date of the reporting period before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **status.num** | Enum [0, 1] |  Status of the transactional report.     -0- Transaction is entered            into the system.           But not verified.     -1- Transaction is verified.  | [optional] 
 **min.coverage.end.date** | **character**|  Ending date of the reporting period after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort** | list( **character** )| Provide a field to sort by. Use - for descending order. | [optional] [default to [&quot;-report_year&quot;]]
 **min.transaction.data.complete.date** | **character**|  Select all filings processed completely after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **form.type** | list( **character** )| The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information  | [optional] 
 **candidate.committee.id** | list( **character** )|  A unique identifier of the registered filer.  | [optional] 
 **report.year** | list( **integer** )|  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date.  | [optional] 
 **min.receipt.date** | **character**|  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **beginning.image.number** | list( **character** )|  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.receipt.date** | **character**|  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **report.type** | list( **character** )| Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE)  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**OperationsLogPage**](OperationsLogPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

