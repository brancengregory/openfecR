# FinancialApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CommitteeCommitteeIdReportsGet**](FinancialApi.md#CommitteeCommitteeIdReportsGet) | **GET** /committee/{committee_id}/reports/ | 
[**CommitteeCommitteeIdTotalsGet**](FinancialApi.md#CommitteeCommitteeIdTotalsGet) | **GET** /committee/{committee_id}/totals/ | 
[**ElectionsGet**](FinancialApi.md#ElectionsGet) | **GET** /elections/ | 
[**ElectionsSearchGet**](FinancialApi.md#ElectionsSearchGet) | **GET** /elections/search/ | 
[**ElectionsSummaryGet**](FinancialApi.md#ElectionsSummaryGet) | **GET** /elections/summary/ | 
[**ReportsEntityTypeGet**](FinancialApi.md#ReportsEntityTypeGet) | **GET** /reports/{entity_type}/ | 
[**TotalsByEntityGet**](FinancialApi.md#TotalsByEntityGet) | **GET** /totals/by_entity/ | 
[**TotalsEntityTypeGet**](FinancialApi.md#TotalsEntityTypeGet) | **GET** /totals/{entity_type}/ | 


# **CommitteeCommitteeIdReportsGet**
> CommitteeReportsPage CommitteeCommitteeIdReportsGet(api.key, committee.id, is.amended=var.is.amended, max.total.contributions=var.max.total.contributions, max.independent.expenditures=var.max.independent.expenditures, per.page=20, max.debts.owed.expenditures=var.max.debts.owed.expenditures, sort=["-coverage_end_date"], min.disbursements.amount=var.min.disbursements.amount, min.cash.on.hand.end.period.amount=var.min.cash.on.hand.end.period.amount, min.party.coordinated.expenditures=var.min.party.coordinated.expenditures, max.disbursements.amount=var.max.disbursements.amount, max.party.coordinated.expenditures=var.max.party.coordinated.expenditures, type=var.type, min.receipts.amount=var.min.receipts.amount, max.cash.on.hand.end.period.amount=var.max.cash.on.hand.end.period.amount, cycle=var.cycle, max.receipts.amount=var.max.receipts.amount, beginning.image.number=var.beginning.image.number, min.independent.expenditures=var.min.independent.expenditures, sort.hide.null=FALSE, year=var.year, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, min.total.contributions=var.min.total.contributions, min.debts.owed.amount=var.min.debts.owed.amount, report.type=var.report.type, page=1)



 Each report represents the summary information from Form 3, Form 3X and Form 3P. These reports have key statistics that illuminate the financial status of a given committee. Things like cash on hand, debts owed by committee, total receipts, and total disbursements are especially helpful for understanding a committee's financial dealings.  By default, this endpoint includes both amended and final versions of each report. To restrict to only the final versions of each report, use `is_amended=false`; to retrieve only reports that have been amended, use `is_amended=true`.  Several different reporting structures exist, depending on the type of organization that submits financial information. To see an example of these reporting requirements, look at the summary and detailed summary pages of Form 3, Form 3X, and Form 3P.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.is.amended <- 'is.amended_example' # character |  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment. 
var.max.total.contributions <- 'max.total.contributions_example' # character |  Filter for all amounts less than a value. 
var.max.independent.expenditures <- 'max.independent.expenditures_example' # character |  Filter for all amounts less than a value. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.max.debts.owed.expenditures <- 'max.debts.owed.expenditures_example' # character |  Filter for all amounts less than a value. 
var.sort <- list("inner_example") # array[character] | Provide a field to sort by. Use - for descending order.
var.min.disbursements.amount <- 'min.disbursements.amount_example' # character |  Filter for all amounts greater than a value. 
var.min.cash.on.hand.end.period.amount <- 'min.cash.on.hand.end.period.amount_example' # character |  Filter for all amounts greater than a value. 
var.min.party.coordinated.expenditures <- 'min.party.coordinated.expenditures_example' # character |  Filter for all amounts greater than a value. 
var.max.disbursements.amount <- 'max.disbursements.amount_example' # character |  Filter for all amounts less than a value. 
var.max.party.coordinated.expenditures <- 'max.party.coordinated.expenditures_example' # character |  Filter for all amounts less than a value. 
var.type <- list("inner_example") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.min.receipts.amount <- 'min.receipts.amount_example' # character |  Filter for all amounts greater than a value. 
var.max.cash.on.hand.end.period.amount <- 'max.cash.on.hand.end.period.amount_example' # character |  Filter for all amounts less than a value. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.max.receipts.amount <- 'max.receipts.amount_example' # character |  Filter for all amounts less than a value. 
var.beginning.image.number <- list("inner_example") # array[character] |  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document. 
var.min.independent.expenditures <- 'min.independent.expenditures_example' # character |  Filter for all amounts greater than a value. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.year <- list(123) # array[integer] |  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date. 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.min.total.contributions <- 'min.total.contributions_example' # character |  Filter for all amounts greater than a value. 
var.min.debts.owed.amount <- 'min.debts.owed.amount_example' # character |  Filter for all amounts greater than a value. 
var.report.type <- list("inner_example") # array[character] | Report type; prefix with \"-\" to exclude. Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FinancialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteeCommitteeIdReportsGet(var.api.key, var.committee.id, is.amended=var.is.amended, max.total.contributions=var.max.total.contributions, max.independent.expenditures=var.max.independent.expenditures, per.page=var.per.page, max.debts.owed.expenditures=var.max.debts.owed.expenditures, sort=var.sort, min.disbursements.amount=var.min.disbursements.amount, min.cash.on.hand.end.period.amount=var.min.cash.on.hand.end.period.amount, min.party.coordinated.expenditures=var.min.party.coordinated.expenditures, max.disbursements.amount=var.max.disbursements.amount, max.party.coordinated.expenditures=var.max.party.coordinated.expenditures, type=var.type, min.receipts.amount=var.min.receipts.amount, max.cash.on.hand.end.period.amount=var.max.cash.on.hand.end.period.amount, cycle=var.cycle, max.receipts.amount=var.max.receipts.amount, beginning.image.number=var.beginning.image.number, min.independent.expenditures=var.min.independent.expenditures, sort.hide.null=var.sort.hide.null, year=var.year, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, min.total.contributions=var.min.total.contributions, min.debts.owed.amount=var.min.debts.owed.amount, report.type=var.report.type, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
 **is.amended** | **character**|  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment.  | [optional] 
 **max.total.contributions** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **max.independent.expenditures** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **max.debts.owed.expenditures** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **sort** | list( **character** )| Provide a field to sort by. Use - for descending order. | [optional] [default to [&quot;-coverage_end_date&quot;]]
 **min.disbursements.amount** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **min.cash.on.hand.end.period.amount** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **min.party.coordinated.expenditures** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **max.disbursements.amount** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **max.party.coordinated.expenditures** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **type** | list( **character** )| The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **min.receipts.amount** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **max.cash.on.hand.end.period.amount** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **max.receipts.amount** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **beginning.image.number** | list( **character** )|  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.  | [optional] 
 **min.independent.expenditures** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **year** | list( **integer** )|  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date.  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **min.total.contributions** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **min.debts.owed.amount** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **report.type** | list( **character** )| Report type; prefix with \&quot;-\&quot; to exclude. Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteeReportsPage**](CommitteeReportsPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CommitteeCommitteeIdTotalsGet**
> CommitteeTotalsPage CommitteeCommitteeIdTotalsGet(api.key, committee.id, sort='-cycle', cycle=var.cycle, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, page=1, sort.null.only=FALSE)



 This endpoint provides information about a committee's Form 3, Form 3X, or Form 3P financial reports, which are aggregated by two-year period. We refer to two-year periods as a `cycle`.  The cycle is named after the even-numbered year and includes the year before it. To obtain totals from 2013 and 2014, you would use 2014. In odd-numbered years, the current cycle is the next year — for example, in 2015, the current cycle is 2016.  For presidential and Senate candidates, multiple two-year cycles exist between elections.  

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- '-cycle' # character | Provide a field to sort by. Use `-` for descending order. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.page <- 1 # integer | For paginating through results, starting at page 1
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null

api.instance <- FinancialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CommitteeCommitteeIdTotalsGet(var.api.key, var.committee.id, sort=var.sort, cycle=var.cycle, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, page=var.page, sort.null.only=var.sort.null.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-cycle&#39;]
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]

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

# **ElectionsGet**
> ElectionPage ElectionsGet(office, cycle, api.key, sort.hide.null=FALSE, per.page=20, election.full=TRUE, sort.nulls.last=FALSE, district=var.district, sort.null.only=FALSE, sort='-total_receipts', state=var.state, page=1)



 Look at the top-level financial information for all candidates running for the same office.  Choose a 2-year cycle, and `house`, `senate` or `presidential`.  If you are looking for a Senate seat, you will need to select the state using a two-letter abbreviation.  House races require state and a two-digit district number.  Since this endpoint reflects financial information, it will only have candidates once they file financial reporting forms. Query the `/candidates` endpoint to retrieve an-up-to-date list of all the candidates that filed to run for a particular seat. 

### Example
```R
library(openapi)

var.office <- 'office_example' # character | Federal office candidate runs for: H, S or P
var.cycle <- 56 # integer |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- 'district_example' # character | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- '-total_receipts' # character | Provide a field to sort by. Use `-` for descending order. 
var.state <- 'state_example' # character | US state or territory where a candidate runs for office
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FinancialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ElectionsGet(var.office, var.cycle, var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, election.full=var.election.full, sort.nulls.last=var.sort.nulls.last, district=var.district, sort.null.only=var.sort.null.only, sort=var.sort, state=var.state, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office** | Enum [house, senate, president] | Federal office candidate runs for: H, S or P | 
 **cycle** | **integer**|  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | 
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | **character**| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-total_receipts&#39;]
 **state** | **character**| US state or territory where a candidate runs for office | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ElectionPage**](ElectionPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **ElectionsSearchGet**
> ElectionsListPage ElectionsSearchGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, district=var.district, sort.null.only=FALSE, sort=["sort_order","district"], office=var.office, zip=var.zip, state=var.state, cycle=var.cycle, page=1)



 List elections by cycle, office, state, and district. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.district <- list("inner_example") # array[character] | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.sort <- list("inner_example") # array[character] | Provide a field to sort by. Use - for descending order.
var.office <- list("house") # array[character] | 
var.zip <- list(123) # array[integer] | Zip code
var.state <- list("inner_example") # array[character] | US state or territory where a candidate runs for office
var.cycle <- list(123) # array[integer] |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FinancialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ElectionsSearchGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, district=var.district, sort.null.only=var.sort.null.only, sort=var.sort, office=var.office, zip=var.zip, state=var.state, cycle=var.cycle, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **district** | list( **character** )| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **sort** | list( **character** )| Provide a field to sort by. Use - for descending order. | [optional] [default to [&quot;sort_order&quot;,&quot;district&quot;]]
 **office** | Enum [house, senate, president] |  | [optional] 
 **zip** | list( **integer** )| Zip code | [optional] 
 **state** | list( **character** )| US state or territory where a candidate runs for office | [optional] 
 **cycle** | list( **integer** )|  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**ElectionsListPage**](ElectionsListPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **ElectionsSummaryGet**
> ElectionSummary ElectionsSummaryGet(office, cycle, api.key, state=var.state, election.full=TRUE, district=var.district)



 List elections by cycle, office, state, and district. 

### Example
```R
library(openapi)

var.office <- 'office_example' # character | Federal office candidate runs for: H, S or P
var.cycle <- 56 # integer |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.state <- 'state_example' # character | US state or territory where a candidate runs for office
var.election.full <- TRUE # character | `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
var.district <- 'district_example' # character | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.

api.instance <- FinancialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ElectionsSummaryGet(var.office, var.cycle, var.api.key, state=var.state, election.full=var.election.full, district=var.district)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office** | Enum [house, senate, president] | Federal office candidate runs for: H, S or P | 
 **cycle** | **integer**|  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | 
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **state** | **character**| US state or territory where a candidate runs for office | [optional] 
 **election.full** | **character**| &#x60;True&#x60; indicates that full election period of a candidate. &#x60;False&#x60; indicates that two year election cycle. | [optional] [default to TRUE]
 **district** | **character**| Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 

### Return type

[**ElectionSummary**](ElectionSummary.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **ReportsEntityTypeGet**
> CommitteeReportsPage ReportsEntityTypeGet(api.key, entity.type, is.amended=var.is.amended, max.independent.expenditures=var.max.independent.expenditures, per.page=20, committee.id=var.committee.id, sort=["-coverage_end_date"], beginning.image.number=var.beginning.image.number, sort.hide.null=FALSE, year=var.year, min.total.contributions=var.min.total.contributions, most.recent=var.most.recent, amendment.indicator=var.amendment.indicator, max.total.contributions=var.max.total.contributions, filer.type=var.filer.type, max.debts.owed.expenditures=var.max.debts.owed.expenditures, min.disbursements.amount=var.min.disbursements.amount, min.cash.on.hand.end.period.amount=var.min.cash.on.hand.end.period.amount, min.party.coordinated.expenditures=var.min.party.coordinated.expenditures, max.disbursements.amount=var.max.disbursements.amount, max.party.coordinated.expenditures=var.max.party.coordinated.expenditures, type=var.type, min.receipts.amount=var.min.receipts.amount, max.cash.on.hand.end.period.amount=var.max.cash.on.hand.end.period.amount, cycle=var.cycle, max.receipts.amount=var.max.receipts.amount, min.receipt.date=var.min.receipt.date, min.independent.expenditures=var.min.independent.expenditures, max.receipt.date=var.max.receipt.date, sort.nulls.last=FALSE, candidate.id=var.candidate.id, sort.null.only=FALSE, min.debts.owed.amount=var.min.debts.owed.amount, report.type=var.report.type, page=1)



 Each report represents the summary information from Form 3, Form 3X and Form 3P. These reports have key statistics that illuminate the financial status of a given committee. Things like cash on hand, debts owed by committee, total receipts, and total disbursements are especially helpful for understanding a committee's financial dealings.  By default, this endpoint includes both amended and final versions of each report. To restrict to only the final versions of each report, use `is_amended=false`; to retrieve only reports that have been amended, use `is_amended=true`.  Several different reporting structures exist, depending on the type of organization that submits financial information. To see an example of these reporting requirements, look at the summary and detailed summary pages of Form 3, Form 3X, and Form 3P.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.entity.type <- 'entity.type_example' # character | Committee groupings based on FEC filing form.                 Choose one of: `presidential`, `pac-party`, `house-senate`, or `ie-only`
var.is.amended <- 'is.amended_example' # character |  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment. 
var.max.independent.expenditures <- 'max.independent.expenditures_example' # character |  Filter for all amounts less than a value. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.committee.id <- list("inner_example") # array[character] |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.sort <- list("inner_example") # array[character] | Provide a field to sort by. Use - for descending order.
var.beginning.image.number <- list("inner_example") # array[character] |  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.year <- list(123) # array[integer] |  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date. 
var.min.total.contributions <- 'min.total.contributions_example' # character |  Filter for all amounts greater than a value. 
var.most.recent <- 'most.recent_example' # character |  Report is either new or is the most-recently filed amendment 
var.amendment.indicator <- list("") # array[character] | Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment. 
var.max.total.contributions <- 'max.total.contributions_example' # character |  Filter for all amounts less than a value. 
var.filer.type <- 'filer.type_example' # character | The method used to file with the FEC, either electronic or on paper.
var.max.debts.owed.expenditures <- 'max.debts.owed.expenditures_example' # character |  Filter for all amounts less than a value. 
var.min.disbursements.amount <- 'min.disbursements.amount_example' # character |  Filter for all amounts greater than a value. 
var.min.cash.on.hand.end.period.amount <- 'min.cash.on.hand.end.period.amount_example' # character |  Filter for all amounts greater than a value. 
var.min.party.coordinated.expenditures <- 'min.party.coordinated.expenditures_example' # character |  Filter for all amounts greater than a value. 
var.max.disbursements.amount <- 'max.disbursements.amount_example' # character |  Filter for all amounts less than a value. 
var.max.party.coordinated.expenditures <- 'max.party.coordinated.expenditures_example' # character |  Filter for all amounts less than a value. 
var.type <- list("inner_example") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.min.receipts.amount <- 'min.receipts.amount_example' # character |  Filter for all amounts greater than a value. 
var.max.cash.on.hand.end.period.amount <- 'max.cash.on.hand.end.period.amount_example' # character |  Filter for all amounts less than a value. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.max.receipts.amount <- 'max.receipts.amount_example' # character |  Filter for all amounts less than a value. 
var.min.receipt.date <- 'min.receipt.date_example' # character |  Selects all items received by FEC after this date(MM/DD/YYYY or YYYY-MM-DD) 
var.min.independent.expenditures <- 'min.independent.expenditures_example' # character |  Filter for all amounts greater than a value. 
var.max.receipt.date <- 'max.receipt.date_example' # character |  Selects all items received by FEC before this date(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.candidate.id <- 'candidate.id_example' # character |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.min.debts.owed.amount <- 'min.debts.owed.amount_example' # character |  Filter for all amounts greater than a value. 
var.report.type <- list("inner_example") # array[character] | Report type; prefix with \"-\" to exclude. Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND 
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FinancialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ReportsEntityTypeGet(var.api.key, var.entity.type, is.amended=var.is.amended, max.independent.expenditures=var.max.independent.expenditures, per.page=var.per.page, committee.id=var.committee.id, sort=var.sort, beginning.image.number=var.beginning.image.number, sort.hide.null=var.sort.hide.null, year=var.year, min.total.contributions=var.min.total.contributions, most.recent=var.most.recent, amendment.indicator=var.amendment.indicator, max.total.contributions=var.max.total.contributions, filer.type=var.filer.type, max.debts.owed.expenditures=var.max.debts.owed.expenditures, min.disbursements.amount=var.min.disbursements.amount, min.cash.on.hand.end.period.amount=var.min.cash.on.hand.end.period.amount, min.party.coordinated.expenditures=var.min.party.coordinated.expenditures, max.disbursements.amount=var.max.disbursements.amount, max.party.coordinated.expenditures=var.max.party.coordinated.expenditures, type=var.type, min.receipts.amount=var.min.receipts.amount, max.cash.on.hand.end.period.amount=var.max.cash.on.hand.end.period.amount, cycle=var.cycle, max.receipts.amount=var.max.receipts.amount, min.receipt.date=var.min.receipt.date, min.independent.expenditures=var.min.independent.expenditures, max.receipt.date=var.max.receipt.date, sort.nulls.last=var.sort.nulls.last, candidate.id=var.candidate.id, sort.null.only=var.sort.null.only, min.debts.owed.amount=var.min.debts.owed.amount, report.type=var.report.type, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **entity.type** | Enum [presidential, pac-party, house-senate, ie-only] | Committee groupings based on FEC filing form.                 Choose one of: &#x60;presidential&#x60;, &#x60;pac-party&#x60;, &#x60;house-senate&#x60;, or &#x60;ie-only&#x60; | 
 **is.amended** | **character**|  False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment.  | [optional] 
 **max.independent.expenditures** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **committee.id** | list( **character** )|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **sort** | list( **character** )| Provide a field to sort by. Use - for descending order. | [optional] [default to [&quot;-coverage_end_date&quot;]]
 **beginning.image.number** | list( **character** )|  Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **year** | list( **integer** )|  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date.  | [optional] 
 **min.total.contributions** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **most.recent** | **character**|  Report is either new or is the most-recently filed amendment  | [optional] 
 **amendment.indicator** | Enum [, N, A, T, C, M, S] | Amendent types:     -N   new     -A   amendment     -T   terminated     -C   consolidated     -M   multi-candidate     -S   secondary  NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment.  | [optional] 
 **max.total.contributions** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **filer.type** | Enum [e-file, paper] | The method used to file with the FEC, either electronic or on paper. | [optional] 
 **max.debts.owed.expenditures** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **min.disbursements.amount** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **min.cash.on.hand.end.period.amount** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **min.party.coordinated.expenditures** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **max.disbursements.amount** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **max.party.coordinated.expenditures** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **type** | list( **character** )| The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **min.receipts.amount** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **max.cash.on.hand.end.period.amount** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **max.receipts.amount** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **min.receipt.date** | **character**|  Selects all items received by FEC after this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **min.independent.expenditures** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **max.receipt.date** | **character**|  Selects all items received by FEC before this date(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **candidate.id** | **character**|  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **min.debts.owed.amount** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **report.type** | list( **character** )| Report type; prefix with \&quot;-\&quot; to exclude. Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CommitteeReportsPage**](CommitteeReportsPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **TotalsByEntityGet**
> EntityReceiptDisbursementTotalsPage TotalsByEntityGet(api.key, cycle, sort='end_date', sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, page=1, sort.null.only=FALSE)



 Provides cumulative receipt totals by entity type, over a two year cycle. Totals are adjusted to avoid double counting.  This is [the sql](https://github.com/fecgov/openFEC/blob/develop/data/migrations/V41__large_aggregates.sql) that creates these calculations. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.cycle <- 56 # integer |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.sort <- 'end_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.page <- 1 # integer | For paginating through results, starting at page 1
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null

api.instance <- FinancialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$TotalsByEntityGet(var.api.key, var.cycle, sort=var.sort, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, page=var.page, sort.null.only=var.sort.null.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **cycle** | **integer**|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;end_date&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]

### Return type

[**EntityReceiptDisbursementTotalsPage**](EntityReceiptDisbursementTotalsPage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **TotalsEntityTypeGet**
> CommitteeTotalsPage TotalsEntityTypeGet(api.key, entity.type, max.receipts=var.max.receipts, per.page=20, min.disbursements=var.min.disbursements, committee.id=var.committee.id, min.receipts=var.min.receipts, committee.type=var.committee.type, sort='-cycle', max.disbursements=var.max.disbursements, filing.frequency=var.filing.frequency, max.last.debts.owed.by.committee=var.max.last.debts.owed.by.committee, max.last.cash.on.hand.end.period=var.max.last.cash.on.hand.end.period, cycle=var.cycle, committee.designation=var.committee.designation, min.last.cash.on.hand.end.period=var.min.last.cash.on.hand.end.period, sort.hide.null=FALSE, treasurer.name=var.treasurer.name, min.last.debts.owed.by.committee=var.min.last.debts.owed.by.committee, sort.nulls.last=FALSE, sort.null.only=FALSE, committee.state=var.committee.state, page=1)



 This endpoint provides information about a committee's Form 3, Form 3X, or Form 3P financial reports, which are aggregated by two-year period. We refer to two-year periods as a `cycle`.  The cycle is named after the even-numbered year and includes the year before it. To obtain totals from 2013 and 2014, you would use 2014. In odd-numbered years, the current cycle is the next year — for example, in 2015, the current cycle is 2016.  For presidential and Senate candidates, multiple two-year cycles exist between elections.  

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.entity.type <- 'entity.type_example' # character | Committee groupings based on FEC filing form.                 Choose one of: `presidential`, `pac`, `party`, `pac-party`,                 `house-senate`, or `ie-only`
var.max.receipts <- 'max.receipts_example' # character |  Filter for all amounts less than a value. 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.min.disbursements <- 'min.disbursements_example' # character |  Filter for all amounts greater than a value. 
var.committee.id <- 'committee.id_example' # character |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
var.min.receipts <- 'min.receipts_example' # character |  Filter for all amounts greater than a value. 
var.committee.type <- list("inner_example") # array[character] | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 
var.sort <- '-cycle' # character | Provide a field to sort by. Use `-` for descending order. 
var.max.disbursements <- 'max.disbursements_example' # character |  Filter for all amounts less than a value. 
var.filing.frequency <- list("") # array[character] | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived 
var.max.last.debts.owed.by.committee <- 'max.last.debts.owed.by.committee_example' # character |  Filter for all amounts less than a value. 
var.max.last.cash.on.hand.end.period <- 'max.last.cash.on.hand.end.period_example' # character |  Filter for all amounts less than a value. 
var.cycle <- list(123) # array[integer] |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 
var.committee.designation <- list("inner_example") # array[character] | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 
var.min.last.cash.on.hand.end.period <- 'min.last.cash.on.hand.end.period_example' # character |  Filter for all amounts greater than a value. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.treasurer.name <- list("inner_example") # array[character] | Name of the Committee's treasurer. If multiple treasurers for the committee, the most recent treasurer will be shown.
var.min.last.debts.owed.by.committee <- 'min.last.debts.owed.by.committee_example' # character |  Filter for all amounts greater than a value. 
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.committee.state <- list("inner_example") # array[character] | US state or territory
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- FinancialApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$TotalsEntityTypeGet(var.api.key, var.entity.type, max.receipts=var.max.receipts, per.page=var.per.page, min.disbursements=var.min.disbursements, committee.id=var.committee.id, min.receipts=var.min.receipts, committee.type=var.committee.type, sort=var.sort, max.disbursements=var.max.disbursements, filing.frequency=var.filing.frequency, max.last.debts.owed.by.committee=var.max.last.debts.owed.by.committee, max.last.cash.on.hand.end.period=var.max.last.cash.on.hand.end.period, cycle=var.cycle, committee.designation=var.committee.designation, min.last.cash.on.hand.end.period=var.min.last.cash.on.hand.end.period, sort.hide.null=var.sort.hide.null, treasurer.name=var.treasurer.name, min.last.debts.owed.by.committee=var.min.last.debts.owed.by.committee, sort.nulls.last=var.sort.nulls.last, sort.null.only=var.sort.null.only, committee.state=var.committee.state, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **entity.type** | Enum [presidential, pac, party, pac-party, house-senate, ie-only] | Committee groupings based on FEC filing form.                 Choose one of: &#x60;presidential&#x60;, &#x60;pac&#x60;, &#x60;party&#x60;, &#x60;pac-party&#x60;,                 &#x60;house-senate&#x60;, or &#x60;ie-only&#x60; | 
 **max.receipts** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **min.disbursements** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **committee.id** | **character**|  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | [optional] 
 **min.receipts** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **committee.type** | list( **character** )| The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-cycle&#39;]
 **max.disbursements** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **filing.frequency** | Enum [, A, M, N, Q, T, W, -A, -T] | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived  | [optional] 
 **max.last.debts.owed.by.committee** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **max.last.cash.on.hand.end.period** | **character**|  Filter for all amounts less than a value.  | [optional] 
 **cycle** | list( **integer** )|  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
 **committee.designation** | list( **character** )| The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
 **min.last.cash.on.hand.end.period** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **treasurer.name** | list( **character** )| Name of the Committee&#39;s treasurer. If multiple treasurers for the committee, the most recent treasurer will be shown. | [optional] 
 **min.last.debts.owed.by.committee** | **character**|  Filter for all amounts greater than a value.  | [optional] 
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **committee.state** | list( **character** )| US state or territory | [optional] 
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

