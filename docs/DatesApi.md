# DatesApi

All URIs are relative to *http://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CalendarDatesExportGet**](DatesApi.md#CalendarDatesExportGet) | **GET** /calendar-dates/export/ | 
[**CalendarDatesGet**](DatesApi.md#CalendarDatesGet) | **GET** /calendar-dates/ | 
[**ElectionDatesGet**](DatesApi.md#ElectionDatesGet) | **GET** /election-dates/ | 
[**ReportingDatesGet**](DatesApi.md#ReportingDatesGet) | **GET** /reporting-dates/ | 


# **CalendarDatesExportGet**
> CalendarDatePage CalendarDatesExportGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, max.start.date=var.max.start.date, calendar.category.id=var.calendar.category.id, sort.null.only=FALSE, description=var.description, min.end.date=var.min.end.date, min.start.date=var.min.start.date, max.end.date=var.max.end.date, renderer='ics', sort='-start_date', summary=var.summary, event.id=var.event.id, page=1)



 Returns CSV or ICS for downloading directly into calendar applications like Google, Outlook or other applications.  Combines the election and reporting dates with Commission meetings, conferences, outreach, Advisory Opinions, rules, litigation dates and other events into one calendar.  State filtering now applies to elections, reports and reporting periods.  Presidential pre-primary report due dates are not shown on even years. Filers generally opt to file monthly rather than submit over 50 pre-primary election reports. All reporting deadlines are available at /reporting-dates/ for reference.  This is [the sql function](https://github.com/fecgov/openFEC/blob/develop/data/migrations/V40__omnibus_dates.sql) that creates the calendar.  

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.max.start.date <- 'max.start.date_example' # character |  The maximum start date.(MM/DD/YYYY or YYYY-MM-DD) 
var.calendar.category.id <- list(123) # array[integer] |  Each type of event has a calendar category with an integer id. Options are: Open Meetings: 32, Executive Sessions: 39, Public Hearings: 40, Conferences: 33, Roundtables: 34, Election Dates: 36, Federal Holidays: 37, FEA Periods: 38, Commission Meetings: 20, Reporting Deadlines: 21, Conferences and Outreach: 22, AOs and Rules: 23, Other: 24, Quarterly: 25, Monthly: 26, Pre and Post-Elections: 27, EC Periods:28, and IE Periods: 29 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.description <- list("inner_example") # array[character] | Brief description of event
var.min.end.date <- 'min.end.date_example' # character |  The minimum end date.(MM/DD/YYYY or YYYY-MM-DD) 
var.min.start.date <- 'min.start.date_example' # character |  The minimum start date.(MM/DD/YYYY or YYYY-MM-DD) 
var.max.end.date <- 'max.end.date_example' # character |  The maximum end date.(MM/DD/YYYY or YYYY-MM-DD) 
var.renderer <- 'ics' # character | 
var.sort <- '-start_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.summary <- list("inner_example") # array[character] | Longer description of event
var.event.id <- 56 # integer | An unique ID for an event. Useful for downloading a single event to your calendar. This ID is not a permanent, persistent ID.
var.page <- 1 # integer | For paginating through results, starting at page 1

api.instance <- DatesApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CalendarDatesExportGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, max.start.date=var.max.start.date, calendar.category.id=var.calendar.category.id, sort.null.only=var.sort.null.only, description=var.description, min.end.date=var.min.end.date, min.start.date=var.min.start.date, max.end.date=var.max.end.date, renderer=var.renderer, sort=var.sort, summary=var.summary, event.id=var.event.id, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **max.start.date** | **character**|  The maximum start date.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **calendar.category.id** | list( **integer** )|  Each type of event has a calendar category with an integer id. Options are: Open Meetings: 32, Executive Sessions: 39, Public Hearings: 40, Conferences: 33, Roundtables: 34, Election Dates: 36, Federal Holidays: 37, FEA Periods: 38, Commission Meetings: 20, Reporting Deadlines: 21, Conferences and Outreach: 22, AOs and Rules: 23, Other: 24, Quarterly: 25, Monthly: 26, Pre and Post-Elections: 27, EC Periods:28, and IE Periods: 29  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **description** | list( **character** )| Brief description of event | [optional] 
 **min.end.date** | **character**|  The minimum end date.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **min.start.date** | **character**|  The minimum start date.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **max.end.date** | **character**|  The maximum end date.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **renderer** | Enum [ics, csv] |  | [optional] [default to &#39;ics&#39;]
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-start_date&#39;]
 **summary** | list( **character** )| Longer description of event | [optional] 
 **event.id** | **integer**| An unique ID for an event. Useful for downloading a single event to your calendar. This ID is not a permanent, persistent ID. | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]

### Return type

[**CalendarDatePage**](CalendarDatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **CalendarDatesGet**
> CalendarDatePage CalendarDatesGet(api.key, sort.hide.null=FALSE, per.page=20, sort.nulls.last=FALSE, max.start.date=var.max.start.date, calendar.category.id=var.calendar.category.id, sort.null.only=FALSE, description=var.description, min.end.date=var.min.end.date, min.start.date=var.min.start.date, max.end.date=var.max.end.date, sort='-start_date', page=1, summary=var.summary, event.id=var.event.id)



 Combines the election and reporting dates with Commission meetings, conferences, outreach, Advisory Opinions, rules, litigation dates and other events into one calendar.  State and report type filtering is no longer available. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.max.start.date <- 'max.start.date_example' # character |  The maximum start date.(MM/DD/YYYY or YYYY-MM-DD) 
var.calendar.category.id <- list(123) # array[integer] |  Each type of event has a calendar category with an integer id. Options are: Open Meetings: 32, Executive Sessions: 39, Public Hearings: 40, Conferences: 33, Roundtables: 34, Election Dates: 36, Federal Holidays: 37, FEA Periods: 38, Commission Meetings: 20, Reporting Deadlines: 21, Conferences and Outreach: 22, AOs and Rules: 23, Other: 24, Quarterly: 25, Monthly: 26, Pre and Post-Elections: 27, EC Periods:28, and IE Periods: 29 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.description <- list("inner_example") # array[character] | Brief description of event
var.min.end.date <- 'min.end.date_example' # character |  The minimum end date.(MM/DD/YYYY or YYYY-MM-DD) 
var.min.start.date <- 'min.start.date_example' # character |  The minimum start date.(MM/DD/YYYY or YYYY-MM-DD) 
var.max.end.date <- 'max.end.date_example' # character |  The maximum end date.(MM/DD/YYYY or YYYY-MM-DD) 
var.sort <- '-start_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.summary <- list("inner_example") # array[character] | Longer description of event
var.event.id <- 56 # integer | An unique ID for an event. Useful for downloading a single event to your calendar. This ID is not a permanent, persistent ID.

api.instance <- DatesApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CalendarDatesGet(var.api.key, sort.hide.null=var.sort.hide.null, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, max.start.date=var.max.start.date, calendar.category.id=var.calendar.category.id, sort.null.only=var.sort.null.only, description=var.description, min.end.date=var.min.end.date, min.start.date=var.min.start.date, max.end.date=var.max.end.date, sort=var.sort, page=var.page, summary=var.summary, event.id=var.event.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **max.start.date** | **character**|  The maximum start date.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **calendar.category.id** | list( **integer** )|  Each type of event has a calendar category with an integer id. Options are: Open Meetings: 32, Executive Sessions: 39, Public Hearings: 40, Conferences: 33, Roundtables: 34, Election Dates: 36, Federal Holidays: 37, FEA Periods: 38, Commission Meetings: 20, Reporting Deadlines: 21, Conferences and Outreach: 22, AOs and Rules: 23, Other: 24, Quarterly: 25, Monthly: 26, Pre and Post-Elections: 27, EC Periods:28, and IE Periods: 29  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **description** | list( **character** )| Brief description of event | [optional] 
 **min.end.date** | **character**|  The minimum end date.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **min.start.date** | **character**|  The minimum start date.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **max.end.date** | **character**|  The maximum end date.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-start_date&#39;]
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **summary** | list( **character** )| Longer description of event | [optional] 
 **event.id** | **integer**| An unique ID for an event. Useful for downloading a single event to your calendar. This ID is not a permanent, persistent ID. | [optional] 

### Return type

[**CalendarDatePage**](CalendarDatePage.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **ElectionDatesGet**
> InlineResponseDefault ElectionDatesGet(api.key, min.update.date=var.min.update.date, min.primary.general.date=var.min.primary.general.date, min.election.date=var.min.election.date, max.primary.general.date=var.max.primary.general.date, per.page=20, election.district=var.election.district, max.election.date=var.max.election.date, max.update.date=var.max.update.date, sort='-election_date', election.type.id=var.election.type.id, max.create.date=var.max.create.date, min.create.date=var.min.create.date, election.state=var.election.state, sort.hide.null=FALSE, sort.nulls.last=FALSE, election.party=var.election.party, sort.null.only=FALSE, office.sought=var.office.sought, page=1, election.year=var.election.year)



 FEC election dates since 1995. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.update.date <- 'min.update.date_example' # character |  The minimum date this record was last updated.(MM/DD/YYYY or YYYY-MM-DD) 
var.min.primary.general.date <- 'min.primary.general.date_example' # character |  The minimum date of primary or general election.(MM/DD/YYYY or YYYY-MM-DD) 
var.min.election.date <- 'min.election.date_example' # character |  The minimum date of election. 
var.max.primary.general.date <- 'max.primary.general.date_example' # character |  The maximum date of primary or general election.(MM/DD/YYYY or YYYY-MM-DD) 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.election.district <- list("inner_example") # array[character] |  House district of the office sought, if applicable. 
var.max.election.date <- 'max.election.date_example' # character |  The maximum date of election. 
var.max.update.date <- 'max.update.date_example' # character |  The maximum date this record was last updated.(MM/DD/YYYY or YYYY-MM-DD) 
var.sort <- '-election_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.election.type.id <- list("inner_example") # array[character] |  Election type id 
var.max.create.date <- 'max.create.date_example' # character |  The maximum date this record was added to the system.(MM/DD/YYYY or YYYY-MM-DD) 
var.min.create.date <- 'min.create.date_example' # character |  The minimum date this record was added to the system.(MM/DD/YYYY or YYYY-MM-DD) 
var.election.state <- list("inner_example") # array[character] |  State or territory of the office sought. 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.election.party <- list("inner_example") # array[character] |  Party, if applicable. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.office.sought <- list("H") # array[character] |  House, Senate or presidential office. 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.election.year <- list("inner_example") # array[character] | Year of election

api.instance <- DatesApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ElectionDatesGet(var.api.key, min.update.date=var.min.update.date, min.primary.general.date=var.min.primary.general.date, min.election.date=var.min.election.date, max.primary.general.date=var.max.primary.general.date, per.page=var.per.page, election.district=var.election.district, max.election.date=var.max.election.date, max.update.date=var.max.update.date, sort=var.sort, election.type.id=var.election.type.id, max.create.date=var.max.create.date, min.create.date=var.min.create.date, election.state=var.election.state, sort.hide.null=var.sort.hide.null, sort.nulls.last=var.sort.nulls.last, election.party=var.election.party, sort.null.only=var.sort.null.only, office.sought=var.office.sought, page=var.page, election.year=var.election.year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.update.date** | **character**|  The minimum date this record was last updated.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **min.primary.general.date** | **character**|  The minimum date of primary or general election.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **min.election.date** | **character**|  The minimum date of election.  | [optional] 
 **max.primary.general.date** | **character**|  The maximum date of primary or general election.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **election.district** | list( **character** )|  House district of the office sought, if applicable.  | [optional] 
 **max.election.date** | **character**|  The maximum date of election.  | [optional] 
 **max.update.date** | **character**|  The maximum date this record was last updated.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-election_date&#39;]
 **election.type.id** | list( **character** )|  Election type id  | [optional] 
 **max.create.date** | **character**|  The maximum date this record was added to the system.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **min.create.date** | **character**|  The minimum date this record was added to the system.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **election.state** | list( **character** )|  State or territory of the office sought.  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **election.party** | list( **character** )|  Party, if applicable.  | [optional] 
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **office.sought** | Enum [H, S, P] |  House, Senate or presidential office.  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **election.year** | list( **character** )| Year of election | [optional] 

### Return type

[**InlineResponseDefault**](inline_response_default.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

# **ReportingDatesGet**
> InlineResponseDefault2 ReportingDatesGet(api.key, min.update.date=var.min.update.date, sort.hide.null=FALSE, max.due.date=var.max.due.date, per.page=20, sort.nulls.last=FALSE, max.update.date=var.max.update.date, max.create.date=var.max.create.date, sort='-due_date', sort.null.only=FALSE, min.create.date=var.min.create.date, report.type=var.report.type, min.due.date=var.min.due.date, page=1, report.year=var.report.year)



 FEC election dates since 1995. 

### Example
```R
library(openapi)

var.api.key <- 'DEMO_KEY' # character |  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
var.min.update.date <- 'min.update.date_example' # character |  The minimum date this record was last updated.(MM/DD/YYYY or YYYY-MM-DD) 
var.sort.hide.null <- FALSE # character | Hide null values on sorted column(s).
var.max.due.date <- 'max.due.date_example' # character |  The maximum date the report is due.(MM/DD/YYYY or YYYY-MM-DD) 
var.per.page <- 20 # integer | The number of results returned per page. Defaults to 20.
var.sort.nulls.last <- FALSE # character | Toggle that sorts null values last
var.max.update.date <- 'max.update.date_example' # character |  The maximum date this record was last updated.(MM/DD/YYYY or YYYY-MM-DD) 
var.max.create.date <- 'max.create.date_example' # character |  The maximum date this record was added to the system.(MM/DD/YYYY or YYYY-MM-DD) 
var.sort <- '-due_date' # character | Provide a field to sort by. Use `-` for descending order. 
var.sort.null.only <- FALSE # character | Toggle that filters out all rows having sort column that is non-null
var.min.create.date <- 'min.create.date_example' # character |  The minimum date this record was added to the system.(MM/DD/YYYY or YYYY-MM-DD) 
var.report.type <- list("inner_example") # array[character] | Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE) 
var.min.due.date <- 'min.due.date_example' # character |  The minimum date the report is due.(MM/DD/YYYY or YYYY-MM-DD) 
var.page <- 1 # integer | For paginating through results, starting at page 1
var.report.year <- list(123) # array[integer] |  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date. 

api.instance <- DatesApi$new()
# Configure API key authorization: ApiKeyHeaderAuth
api.instance$apiClient$apiKeys['X-Api-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: ApiKeyQueryAuth
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: apiKey
api.instance$apiClient$apiKeys['api_key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ReportingDatesGet(var.api.key, min.update.date=var.min.update.date, sort.hide.null=var.sort.hide.null, max.due.date=var.max.due.date, per.page=var.per.page, sort.nulls.last=var.sort.nulls.last, max.update.date=var.max.update.date, max.create.date=var.max.create.date, sort=var.sort, sort.null.only=var.sort.null.only, min.create.date=var.min.create.date, report.type=var.report.type, min.due.date=var.min.due.date, page=var.page, report.year=var.report.year)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  API key for https://api.data.gov. Get one at https://api.data.gov/signup.  | [default to &#39;DEMO_KEY&#39;]
 **min.update.date** | **character**|  The minimum date this record was last updated.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort.hide.null** | **character**| Hide null values on sorted column(s). | [optional] [default to FALSE]
 **max.due.date** | **character**|  The maximum date the report is due.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **per.page** | **integer**| The number of results returned per page. Defaults to 20. | [optional] [default to 20]
 **sort.nulls.last** | **character**| Toggle that sorts null values last | [optional] [default to FALSE]
 **max.update.date** | **character**|  The maximum date this record was last updated.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **max.create.date** | **character**|  The maximum date this record was added to the system.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **sort** | **character**| Provide a field to sort by. Use &#x60;-&#x60; for descending order.  | [optional] [default to &#39;-due_date&#39;]
 **sort.null.only** | **character**| Toggle that filters out all rows having sort column that is non-null | [optional] [default to FALSE]
 **min.create.date** | **character**|  The minimum date this record was added to the system.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **report.type** | list( **character** )| Name of report where the underlying data comes from:     - 10D Pre-Election     - 10G Pre-General     - 10P Pre-Primary     - 10R Pre-Run-Off     - 10S Pre-Special     - 12C Pre-Convention     - 12G Pre-General     - 12P Pre-Primary     - 12R Pre-Run-Off     - 12S Pre-Special     - 30D Post-Election     - 30G Post-General     - 30P Post-Primary     - 30R Post-Run-Off     - 30S Post-Special     - 60D Post-Convention     - M1  January Monthly     - M10 October Monthly     - M11 November Monthly     - M12 December Monthly     - M2  February Monthly     - M3  March Monthly     - M4  April Monthly     - M5  May Monthly     - M6  June Monthly     - M7  July Monthly     - M8  August Monthly     - M9  September Monthly     - MY  Mid-Year Report     - Q1  April Quarterly     - Q2  July Quarterly     - Q3  October Quarterly     - TER Termination Report     - YE  Year-End     - ADJ COMP ADJUST AMEND     - CA  COMPREHENSIVE AMEND     - 90S Post Inaugural Supplement     - 90D Post Inaugural     - 48  48 Hour Notification     - 24  24 Hour Notification     - M7S July Monthly/Semi-Annual     - MSA Monthly Semi-Annual (MY)     - MYS Monthly Year End/Semi-Annual     - Q2S July Quarterly/Semi-Annual     - QSA Quarterly Semi-Annual (MY)     - QYS Quarterly Year End/Semi-Annual     - QYE Quarterly Semi-Annual (YE)     - QMS Quarterly Mid-Year/ Semi-Annual     - MSY Monthly Semi-Annual (YE)  | [optional] 
 **min.due.date** | **character**|  The minimum date the report is due.(MM/DD/YYYY or YYYY-MM-DD)  | [optional] 
 **page** | **integer**| For paginating through results, starting at page 1 | [optional] [default to 1]
 **report.year** | list( **integer** )|  Forms with coverage date -      year from the coverage ending date. Forms without coverage date -      year from the receipt date.  | [optional] 

### Return type

[**InlineResponseDefault2**](inline_response_default_2.md)

### Authorization

[ApiKeyHeaderAuth](../README.md#ApiKeyHeaderAuth), [ApiKeyQueryAuth](../README.md#ApiKeyQueryAuth), [apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

