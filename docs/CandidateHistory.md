# openapi::CandidateHistory


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_through** | **integer** | Last year a candidate was active. This field is specific to the candidate_id so if the same person runs for another office, there may be a different record for them. | [optional] 
**address_city** | **character** | City of candidate&#39;s address, as reported on their Form 2. | [optional] 
**address_state** | **character** | State of candidate&#39;s address, as reported on their Form 2. | [optional] 
**address_street_1** | **character** | Street of candidate&#39;s address, as reported on their Form 2. | [optional] 
**address_street_2** | **character** | Additional street information of candidate&#39;s address, as reported on their Form 2. | [optional] 
**address_zip** | **character** | Zip code of candidate&#39;s address, as reported on their Form 2. | [optional] 
**candidate_election_year** | **integer** | The last year of the cycle for this election. | [optional] 
**candidate_id** | **character** |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | 
**candidate_inactive** | **character** |  True indicates that a candidate is inactive.  | [optional] 
**candidate_status** | **character** | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  | [optional] 
**cycles** | **array[integer]** |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | [optional] 
**district** | **character** | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
**district_number** | **integer** | One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  | [optional] 
**election_districts** | **array[character]** | Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. | [optional] 
**election_years** | **array[integer]** | Years in which a candidate ran for office. | [optional] 
**fec_cycles_in_election** | **array[integer]** | FEC cycles are included in candidate election years. | [optional] 
**first_file_date** | **character** | The day the FEC received the candidate&#39;s first filing. This is a F2 candidate registration. | [optional] 
**flags** | **character** |  | [optional] 
**incumbent_challenge** | **character** | One-letter code (&#39;I&#39;, &#39;C&#39;, &#39;O&#39;) explaining if the candidate is an incumbent, a challenger, or if the seat is open. | [optional] 
**incumbent_challenge_full** | **character** | Explains if the candidate is an incumbent, a challenger, or if the seat is open. | [optional] 
**last_f2_date** | **character** | The day the FEC received the candidate&#39;s most recent Form 2 | [optional] 
**last_file_date** | **character** | The day the FEC received the candidate&#39;s most recent filing | [optional] 
**load_date** | **character** | Date the information was loaded into the FEC systems. This can be affected by reseting systems and other factors, refer to receipt_date for the day that the FEC received the paper or electronic document. Keep in mind that paper filings take more time to process and there can be a lag between load_date and receipt_date. This field can be helpful to identify paper records that have been processed recently. | [optional] 
**name** | **character** | Name of candidate running for office | [optional] 
**office** | **character** | Federal office candidate runs for: H, S or P | [optional] 
**office_full** | **character** | Federal office candidate runs for: House, Senate or presidential | [optional] 
**party** | **character** | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
**party_full** | **character** | Party affiliated with a candidate or committee | [optional] 
**rounded_election_years** | **array[integer]** | Rounded election years in which a candidate ran for office | [optional] 
**state** | **character** | US state or territory where a candidate runs for office | [optional] 
**two_year_period** | **integer** |  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the &#x60;election_full&#x60; flag.  | 


