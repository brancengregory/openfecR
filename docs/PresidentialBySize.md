# openapi::PresidentialBySize


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**candidate_id** | **character** |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  | [optional] 
**contribution_receipt_amount** | **numeric** |  Contributions received  | [optional] 
**election_year** | **integer** | Year of election | [optional] 
**size** | **integer** |  The total all contributions in the following ranges: &#x60;&#x60;&#x60;   -0    $200 and under   -200  $200.01 - $499.99   -500  $500 - $999.99   -1000 $1000 - $1999.99   -2000 $2000 + &#x60;&#x60;&#x60; Unitemized contributions are included in the &#x60;0&#x60; category.  | [optional] 
**size_range_id** | **integer** |  The total all contributions range id.  | [optional] 


