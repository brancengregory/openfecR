# openapi::CalendarDate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all_day** | **character** |  | [optional] 
**calendar_category_id** | **integer** |  Each type of event has a calendar category with an integer id. Options are: Open Meetings: 32, Executive Sessions: 39, Public Hearings: 40, Conferences: 33, Roundtables: 34, Election Dates: 36, Federal Holidays: 37, FEA Periods: 38, Commission Meetings: 20, Reporting Deadlines: 21, Conferences and Outreach: 22, AOs and Rules: 23, Other: 24, Quarterly: 25, Monthly: 26, Pre and Post-Elections: 27, EC Periods:28, and IE Periods: 29  | [optional] 
**category** | **character** |  Each type of event has a calendar category with an integer id. Options are: Open Meetings: 32, Executive Sessions: 39, Public Hearings: 40, Conferences: 33, Roundtables: 34, Election Dates: 36, Federal Holidays: 37, FEA Periods: 38, Commission Meetings: 20, Reporting Deadlines: 21, Conferences and Outreach: 22, AOs and Rules: 23, Other: 24, Quarterly: 25, Monthly: 26, Pre and Post-Elections: 27, EC Periods:28, and IE Periods: 29  | [optional] 
**description** | **character** |  | [optional] 
**end_date** | **character** |  | [optional] 
**event_id** | **integer** | An unique ID for an event. Useful for downloading a single event to your calendar. This ID is not a permanent, persistent ID. | [optional] 
**location** | **character** |  Can be state address or room.  | [optional] 
**start_date** | **character** |  | [optional] 
**state** | **array[character]** | The state field only applies to election dates and reporting deadlines, reporting periods and all other dates do not have the array of states to filter on | [optional] 
**summary** | **character** |  | [optional] 
**url** | **character** |  A url for that event  | [optional] 


