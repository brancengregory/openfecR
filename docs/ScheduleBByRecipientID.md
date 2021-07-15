# openapi::ScheduleBByRecipientID


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**committee_id** | **character** |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
**committee_name** | **character** |  | [optional] 
**count** | **integer** |  Number of records making up the total.  | [optional] 
**cycle** | **integer** |  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  | 
**memo_count** | **integer** |  Number of records making up the total.  | [optional] 
**memo_total** | **numeric** |  Schedule B disbursements aggregated by memoed items only  | [optional] 
**recipient_id** | **character** | The FEC identifier should be represented here if the entity receiving the disbursement is registered with the FEC. | 
**recipient_name** | **character** |  | [optional] 
**total** | **numeric** |  Schedule B disbursements aggregated by non-memoed items only  | [optional] 


