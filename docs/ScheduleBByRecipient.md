# openapi::ScheduleBByRecipient


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**committee_id** | **character** |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
**count** | **integer** |  Number of records making up the total.  | [optional] 
**cycle** | **integer** |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | 
**memo_count** | **integer** |  Number of records making up the total.  | [optional] 
**memo_total** | **numeric** |  Schedule B disbursements aggregated by memoed items only  | [optional] 
**recipient_name** | **character** | Name of the entity receiving the disbursement | 
**total** | **numeric** |  Schedule B disbursements aggregated by non-memoed items only  | [optional] 


