# openapi::CommitteeHistory


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**affiliated_committee_name** | **character** |  Affiliated committee or connected organization  | [optional] 
**candidate_ids** | **array[character]** |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
**city** | **character** |  City of committee as reported on the Form 1  | [optional] 
**committee_id** | **character** |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
**committee_type** | **character** | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
**committee_type_full** | **character** | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
**convert_to_pac_flag** | **character** | True indicates that a candidate committee had been converted to a PAC | [optional] 
**cycle** | **integer** |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year.  | 
**cycles** | **array[integer]** |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
**cycles_has_activity** | **array[integer]** |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1), and the committee has filling activity during the cycle  | [optional] 
**cycles_has_financial** | **array[integer]** |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s), and the commitee files the financial reports (&#39;F3&#39;, &#39;F3X&#39;, &#39;F3P&#39;, &#39;F3L&#39;, &#39;F4&#39;, &#39;F5&#39;, &#39;F7&#39;, &#39;F13&#39;) during this cycle.  | [optional] 
**designation** | **character** | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
**designation_full** | **character** | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
**filing_frequency** | **character** | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived  | [optional] 
**former_candidate_election_year** | **integer** | Year a candidate runs for federal office. | [optional] 
**former_candidate_id** | **character** |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
**former_candidate_name** | **character** | Name of candidate running for office | [optional] 
**former_committee_name** | **character** | The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records. | [optional] 
**is_active** | **character** |  True indicates that a committee is active.  | [optional] 
**last_cycle_has_activity** | **integer** |  The latest two year election cycle that the committee has filings  | [optional] 
**last_cycle_has_financial** | **integer** |  The latest two year election cycle that the committee files the financial reports (&#39;F3&#39;, &#39;F3X&#39;, &#39;F3P&#39;, &#39;F3L&#39;, &#39;F4&#39;, &#39;F5&#39;, &#39;F7&#39;, &#39;F13&#39;).  | [optional] 
**name** | **character** | The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records. | [optional] 
**organization_type** | **character** | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 
**organization_type_full** | **character** | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 
**party** | **character** | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
**party_full** | **character** | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
**sponsor_candidate_ids** | **array[character]** |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. This is a filter for Leadership PAC sponsor.  | [optional] 
**state** | **character** |  State of the committee&#39;s address as filed on the Form 1  | [optional] 
**state_full** | **character** |  State of committee as reported on the Form 1  | [optional] 
**street_1** | **character** |  Street address of committee as reported on the Form 1  | [optional] 
**street_2** | **character** |  Second line of street address of committee as reported on the Form 1  | [optional] 
**treasurer_name** | **character** | Name of the Committee&#39;s treasurer. If multiple treasurers for the committee, the most recent treasurer will be shown. | [optional] 
**zip** | **character** |  Zip code of committee as reported on the Form 1  | [optional] 


