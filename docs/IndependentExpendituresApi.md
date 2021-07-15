# IndependentExpendituresApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SchedulesScheduleEByCandidateGet**](IndependentExpendituresApi.md#SchedulesScheduleEByCandidateGet) | **GET** /schedules/schedule_e/by_candidate/ | 
[**SchedulesScheduleEEfileGet**](IndependentExpendituresApi.md#SchedulesScheduleEEfileGet) | **GET** /schedules/schedule_e/efile/ | 
[**SchedulesScheduleEGet**](IndependentExpendituresApi.md#SchedulesScheduleEGet) | **GET** /schedules/schedule_e/ | 
[**SchedulesScheduleETotalsByCandidateGet**](IndependentExpendituresApi.md#SchedulesScheduleETotalsByCandidateGet) | **GET** /schedules/schedule_e/totals/by_candidate/ | 


# **SchedulesScheduleEByCandidateGet**
> ScheduleEByCandidatePage SchedulesScheduleEByCandidateGet(api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, district=var.district, candidate.id=var.candidate.id, committee.id=var.committee.id, sort='null', sort.null.only=FALSE, office=var.office, state=var.state, cycle=var.cycle, support.oppose='null', page=1)



 Schedule E receipts aggregated by recipient candidate. To avoid double counting, memoed items are not included. 

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
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- 'null' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.office <- 'office_example' # character | Federal office candidate runs for: H, S or P
var.state <- 'state_example' # character | US state or territory where a candidate runs for office
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.support.oppose <- 'null' # character | Support or opposition
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- IndependentExpendituresApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleEByCandidateGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, district=var.district, candidate.id=var.candidate.id, committee.id=var.committee.id, sort=var.sort, sort.null.only=var.sort.null.only, office=var.office, state=var.state, cycle=var.cycle, support.oppose=var.support.oppose, page=var.page)
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
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;null&#39;]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **office** | Enum [house, senate, president] | Federal office candidate runs for: H, S or P | [optional] 
 **state** | **character**| US state or territory where a candidate runs for office | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **support.oppose** | Enum [S, O] | Support or opposition | [optional] [default to &#39;null&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleEByCandidatePage**](ScheduleEByCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleEEfileGet**
> ScheduleEEfilePage SchedulesScheduleEEfileGet(api.key, support.oppose.indicator=var.support.oppose.indicator, min.expenditure.amount=var.min.expenditure.amount, per.page=20, is.notice=var.is.notice, payee.name=var.payee.name, min.dissemination.date=var.min.dissemination.date, committee.id=var.committee.id, min.expenditure.date=var.min.expenditure.date, max.expenditure.date=var.max.expenditure.date, sort='-expenditure_date', min.filed.date=var.min.filed.date, candidate.office.state=var.candidate.office.state, max.dissemination.date=var.max.dissemination.date, max.expenditure.amount=var.max.expenditure.amount, candidate.party=var.candidate.party, max.filed.date=var.max.filed.date, candidate.search=var.candidate.search, filing.form=var.filing.form, sort.hide.null=FALSE, candidate.office=var.candidate.office, image.number=var.image.number, sort.nulls.last=FALSE, spender.name=var.spender.name, candidate.id=var.candidate.id, sort.null.only=FALSE, most.recent=var.most.recent, candidate.office.district=var.candidate.office.district, page=1)



 Efiling endpoints provide real-time campaign finance data received from electronic filers. Efiling endpoints only contain the most recent four months of data and don't contain the processed and coded data that you can find on other endpoints. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.support.oppose.indicator <- list("S") # array[character] | Explains if the money was spent in order to support or oppose a candidate or candidates. (Coded S or O for support or oppose.) This indicator applies to independent expenditures and communication costs.
var.min.expenditure.amount <- 56 # integer | Selects all items expended by this committee greater than this amount
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.is.notice <- 'is.notice_example' # character |  Record filed as 24- or 48-hour notice. 
var.payee.name <- list("inner_example") # array[character] |  Name of the entity that received the payment. 
var.min.dissemination.date <- 'min.dissemination.date_example' # character | Selects all items distributed by this committee after this date
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.min.expenditure.date <- 'min.expenditure.date_example' # character | Selects all items expended by this committee after this date
var.max.expenditure.date <- 'max.expenditure.date_example' # character | Selects all items expended by this committee before this date
var.sort <- '-expenditure_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.min.filed.date <- 'min.filed.date_example' # character | Timestamp of electronic or paper record that FEC received
var.candidate.office.state <- list("inner_example") # array[character] | US state or territory where a candidate runs for office
var.max.dissemination.date <- 'max.dissemination.date_example' # character | Selects all items distributed by this committee before this date
var.max.expenditure.amount <- 56 # integer | Selects all items expended by this committee less than this amount
var.candidate.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.max.filed.date <- 'max.filed.date_example' # character | Timestamp of electronic or paper record that FEC received
var.candidate.search <- list("inner_example") # array[character] |  Search for candidates by candiate id or candidate first or last name 
var.filing.form <- list("inner_example") # array[character] | The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.candidate.office <- 'candidate.office_example' # character | Federal office candidate runs for: H, S or P
var.image.number <- list("inner_example") # array[character] |  An unique identifier for each page where the electronic or paper filing is reported. 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.spender.name <- list("inner_example") # array[character] | The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records.
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.most.recent <- 'most.recent_example' # character |  The report associated with the transaction is either new or is the most-recently filed amendment. Undetermined version (`null`) is always included. 
var.candidate.office.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- IndependentExpendituresApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleEEfileGet(var.api.key, support.oppose.indicator=var.support.oppose.indicator, min.expenditure.amount=var.min.expenditure.amount, per.page=var.per.page, is.notice=var.is.notice, payee.name=var.payee.name, min.dissemination.date=var.min.dissemination.date, committee.id=var.committee.id, min.expenditure.date=var.min.expenditure.date, max.expenditure.date=var.max.expenditure.date, sort=var.sort, min.filed.date=var.min.filed.date, candidate.office.state=var.candidate.office.state, max.dissemination.date=var.max.dissemination.date, max.expenditure.amount=var.max.expenditure.amount, candidate.party=var.candidate.party, max.filed.date=var.max.filed.date, candidate.search=var.candidate.search, filing.form=var.filing.form, sort.hide.null=var.sort.hide.null, candidate.office=var.candidate.office, image.number=var.image.number, sort.nulls.last=var.sort.nulls.last, spender.name=var.spender.name, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, most.recent=var.most.recent, candidate.office.district=var.candidate.office.district, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **support.oppose.indicator** | Enum [S, O] | Explains if the money was spent in order to support or oppose a candidate or candidates. (Coded S or O for support or oppose.) This indicator applies to independent expenditures and communication costs. | [optional] 
 **min.expenditure.amount** | **integer**| Selects all items expended by this committee greater than this amount | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **is.notice** | **character**|  Record filed as 24- or 48-hour notice.  | [optional] 
 **payee.name** | list( **character** )|  Name of the entity that received the payment.  | [optional] 
 **min.dissemination.date** | **character**| Selects all items distributed by this committee after this date | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **min.expenditure.date** | **character**| Selects all items expended by this committee after this date | [optional] 
 **max.expenditure.date** | **character**| Selects all items expended by this committee before this date | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-expenditure_date&#39;]
 **min.filed.date** | **character**| Timestamp of electronic or paper record that FEC received | [optional] 
 **candidate.office.state** | list( **character** )| US state or territory where a candidate runs for office | [optional] 
 **max.dissemination.date** | **character**| Selects all items distributed by this committee before this date | [optional] 
 **max.expenditure.amount** | **integer**| Selects all items expended by this committee less than this amount | [optional] 
 **candidate.party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **max.filed.date** | **character**| Timestamp of electronic or paper record that FEC received | [optional] 
 **candidate.search** | list( **character** )|  Search for candidates by candiate id or candidate first or last name  | [optional] 
 **filing.form** | list( **character** )| The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **candidate.office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **image.number** | list( **character** )|  An unique identifier for each page where the electronic or paper filing is reported.  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **spender.name** | list( **character** )| The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records. | [optional] 
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **most.recent** | **character**|  The report associated with the transaction is either new or is the most-recently filed amendment. Undetermined version (&#x60;null&#x60;) is always included.  | [optional] 
 **candidate.office.district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ScheduleEEfilePage**](ScheduleEEfilePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleEGet**
> ScheduleEPage SchedulesScheduleEGet(api.key, support.oppose.indicator=var.support.oppose.indicator, max.image.number=var.max.image.number, max.filing.date=var.max.filing.date, per.page=20, is.notice=var.is.notice, min.dissemination.date=var.min.dissemination.date, committee.id=var.committee.id, sort='-expenditure_date', candidate.party=var.candidate.party, last.expenditure.amount=var.last.expenditure.amount, min.amount=var.min.amount, last.index=var.last.index, sort.hide.null=FALSE, max.date=var.max.date, image.number=var.image.number, most.recent=var.most.recent, candidate.office.district=var.candidate.office.district, min.date=var.min.date, max.amount=var.max.amount, line.number=var.line.number, payee.name=var.payee.name, last.support.oppose.indicator='null', candidate.office.state=var.candidate.office.state, max.dissemination.date=var.max.dissemination.date, cycle=var.cycle, last.office.total.ytd=var.last.office.total.ytd, filing.form=var.filing.form, min.image.number=var.min.image.number, candidate.office=var.candidate.office, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, min.filing.date=var.min.filing.date, last.expenditure.date=var.last.expenditure.date)



 Schedule E covers the line item expenditures for independent expenditures. For example, if a super PAC bought ads on TV to oppose a federal candidate, each ad purchase would be recorded here with the expenditure amount, name and id of the candidate, and whether the ad supported or opposed the candidate.  An independent expenditure is an expenditure for a communication \"expressly advocating the election or defeat of a clearly identified candidate that is not made in cooperation, consultation, or concert with, or at the request or suggestion of, a candidate, a candidate’s authorized committee, or their agents, or a political party or its agents.\"  Aggregates by candidate do not include 24 and 48 hour reports. This ensures we don't double count expenditures and the totals are more accurate. You can still find the information from 24 and 48 hour reports in `/schedule/schedule_e/`.  Due to the large quantity of Schedule E filings, this endpoint is not paginated by page number. Instead, you can request the next page of results by adding the values in the `last_indexes` object from `pagination` to the URL of your last request. For example, when sorting by `expenditure_amount`, you might receive a page of results with the following pagination information:  ```  \"pagination\": {     \"count\": 152623,     \"last_indexes\": {       \"last_index\": \"3023037\",       \"last_expenditure_amount\": -17348.5     },     \"per_page\": 20,     \"pages\": 7632   } } ```  To fetch the next page of sorted results, append `last_index=3023037` and `last_expenditure_amount=` to the URL.  We strongly advise paging through these results by using the sort indices (defaults to sort by disbursement date, e.g. `last_disbursement_date`), otherwise some resources may be unintentionally filtered out.  This resource uses keyset pagination to improve query performance and these indices are required to properly page through this large dataset.  Note: because the Schedule E data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.support.oppose.indicator <- list("S") # array[character] | Explains if the money was spent in order to support or oppose a candidate or candidates. (Coded S or O for support or oppose.) This indicator applies to independent expenditures and communication costs.
var.max.image.number <- 'max.image.number_example' # character | 
var.max.filing.date <- 'max.filing.date_example' # character |  Selects all filings received before this date 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.is.notice <- list("inner_example") # array[character] |  Record filed as 24- or 48-hour notice. 
var.min.dissemination.date <- 'min.dissemination.date_example' # character | Selects all items distributed by this committee after this date
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- '-expenditure_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.candidate.party <- list("inner_example") # array[character] | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
var.last.expenditure.amount <- 3.4 # numeric |  When sorting by `expenditure_amount`, this is populated with the `expenditure_amount` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page. 
var.min.amount <- 'min.amount_example' # character | Filter for all amounts greater than a value.
var.last.index <- 56 # integer | Index of last result from previous page
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.date <- 'max.date_example' # character | Maximum date
var.image.number <- list("inner_example") # array[character] | The image number of the page where the schedule item is reported
var.most.recent <- 'most.recent_example' # character |  The report associated with the transaction is either new or is the most-recently filed amendment. Undetermined version (`null`) is always included. 
var.candidate.office.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.min.date <- 'min.date_example' # character | Minimum date
var.max.amount <- 'max.amount_example' # character | Filter for all amounts less than a value.
var.line.number <- 'line.number_example' # character | Filter for form and line number using the following format: `FORM-LINENUMBER`.  For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
var.payee.name <- list("inner_example") # array[character] |  Name of the entity that received the payment. 
var.last.support.oppose.indicator <- 'null' # character |  When sorting by `support_oppose_indicator`, this is populated with the `support_oppose_indicator` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page.' 
var.candidate.office.state <- list("inner_example") # array[character] | US state or territory
var.max.dissemination.date <- 'max.dissemination.date_example' # character | Selects all items distributed by this committee before this date
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.last.office.total.ytd <- 3.4 # numeric |  When sorting by `office_total_ytd`, this is populated with the `office_total_ytd` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page.' 
var.filing.form <- list("inner_example") # array[character] | The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information 
var.min.image.number <- 'min.image.number_example' # character | 
var.candidate.office <- list("") # array[character] | Federal office candidate runs for: H, S or P
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- list("inner_example") # array[character] |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.min.filing.date <- 'min.filing.date_example' # character |  Selects all filings received after this date 
var.last.expenditure.date <- 'last.expenditure.date_example' # character |  When sorting by `expenditure_date`, this is populated with the `expenditure_date` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page. 

api.instance <- IndependentExpendituresApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleEGet(var.api.key, support.oppose.indicator=var.support.oppose.indicator, max.image.number=var.max.image.number, max.filing.date=var.max.filing.date, per.page=var.per.page, is.notice=var.is.notice, min.dissemination.date=var.min.dissemination.date, committee.id=var.committee.id, sort=var.sort, candidate.party=var.candidate.party, last.expenditure.amount=var.last.expenditure.amount, min.amount=var.min.amount, last.index=var.last.index, sort.hide.null=var.sort.hide.null, max.date=var.max.date, image.number=var.image.number, most.recent=var.most.recent, candidate.office.district=var.candidate.office.district, min.date=var.min.date, max.amount=var.max.amount, line.number=var.line.number, payee.name=var.payee.name, last.support.oppose.indicator=var.last.support.oppose.indicator, candidate.office.state=var.candidate.office.state, max.dissemination.date=var.max.dissemination.date, cycle=var.cycle, last.office.total.ytd=var.last.office.total.ytd, filing.form=var.filing.form, min.image.number=var.min.image.number, candidate.office=var.candidate.office, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, min.filing.date=var.min.filing.date, last.expenditure.date=var.last.expenditure.date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **support.oppose.indicator** | Enum [S, O] | Explains if the money was spent in order to support or oppose a candidate or candidates. (Coded S or O for support or oppose.) This indicator applies to independent expenditures and communication costs. | [optional] 
 **max.image.number** | **character**|  | [optional] 
 **max.filing.date** | **character**|  Selects all filings received before this date  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **is.notice** | list( **character** )|  Record filed as 24- or 48-hour notice.  | [optional] 
 **min.dissemination.date** | **character**| Selects all items distributed by this committee after this date | [optional] 
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-expenditure_date&#39;]
 **candidate.party** | list( **character** )| Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
 **last.expenditure.amount** | **numeric**|  When sorting by &#x60;expenditure_amount&#x60;, this is populated with the &#x60;expenditure_amount&#x60; of the last result. However, you will need to pass the index of that last result to &#x60;last_index&#x60; to get the next page.  | [optional] 
 **min.amount** | **character**| Filter for all amounts greater than a value. | [optional] 
 **last.index** | **integer**| Index of last result from previous page | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.date** | **character**| Maximum date | [optional] 
 **image.number** | list( **character** )| The image number of the page where the schedule item is reported | [optional] 
 **most.recent** | **character**|  The report associated with the transaction is either new or is the most-recently filed amendment. Undetermined version (&#x60;null&#x60;) is always included.  | [optional] 
 **candidate.office.district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **min.date** | **character**| Minimum date | [optional] 
 **max.amount** | **character**| Filter for all amounts less than a value. | [optional] 
 **line.number** | **character**| Filter for form and line number using the following format: &#x60;FORM-LINENUMBER&#x60;.  For example an argument such as &#x60;F3X-16&#x60; would filter down to all entries from form &#x60;F3X&#x60; line number &#x60;16&#x60;. | [optional] 
 **payee.name** | list( **character** )|  Name of the entity that received the payment.  | [optional] 
 **last.support.oppose.indicator** | **character**|  When sorting by &#x60;support_oppose_indicator&#x60;, this is populated with the &#x60;support_oppose_indicator&#x60; of the last result. However, you will need to pass the index of that last result to &#x60;last_index&#x60; to get the next page.&#39;  | [optional] [default to &#39;null&#39;]
 **candidate.office.state** | list( **character** )| US state or territory | [optional] 
 **max.dissemination.date** | **character**| Selects all items distributed by this committee before this date | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **last.office.total.ytd** | **numeric**|  When sorting by &#x60;office_total_ytd&#x60;, this is populated with the &#x60;office_total_ytd&#x60; of the last result. However, you will need to pass the index of that last result to &#x60;last_index&#x60; to get the next page.&#39;  | [optional] 
 **filing.form** | list( **character** )| The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information  | [optional] 
 **min.image.number** | **character**|  | [optional] 
 **candidate.office** | Enum [, H, S, P] | Federal office candidate runs for: H, S or P | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | list( **character** )|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **min.filing.date** | **character**|  Selects all filings received after this date  | [optional] 
 **last.expenditure.date** | **character**|  When sorting by &#x60;expenditure_date&#x60;, this is populated with the &#x60;expenditure_date&#x60; of the last result. However, you will need to pass the index of that last result to &#x60;last_index&#x60; to get the next page.  | [optional] 

### Return type

[**ScheduleEPage**](ScheduleEPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **SchedulesScheduleETotalsByCandidateGet**
> IETotalsByCandidatePage SchedulesScheduleETotalsByCandidateGet(api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, sort='null', cycle=var.cycle, page=1)



 Total independent expenditure on supported or opposed candidates by cycle or candidate election year. 

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

api.instance <- IndependentExpendituresApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SchedulesScheduleETotalsByCandidateGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, sort=var.sort, cycle=var.cycle, page=var.page)
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

[**IETotalsByCandidatePage**](IETotalsByCandidatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

