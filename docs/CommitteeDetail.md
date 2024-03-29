# openapi::CommitteeDetail


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**affiliated_committee_name** | **character** |  Affiliated committee or connected organization  | [optional] 
**candidate_ids** | **array[character]** |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
**city** | **character** |  City of committee as reported on the Form 1  | [optional] 
**committee_id** | **character** |  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits.  | 
**committee_type** | **character** | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
**committee_type_full** | **character** | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
**custodian_city** | **character** |  City of committee custodian as reported on the Form 1  | [optional] 
**custodian_name_1** | **character** |  Name 1 of committee custodian as reported on the Form 1  | [optional] 
**custodian_name_2** | **character** |  Name 2 of committee custodian as reported on the Form 1  | [optional] 
**custodian_name_full** | **character** |  Full name of committee custodian as reported on the Form 1  | [optional] 
**custodian_name_middle** | **character** |  Middle name of committee custodian as reported on the Form 1  | [optional] 
**custodian_name_prefix** | **character** |  Name prefix of committee custodian as reported on the Form 1  | [optional] 
**custodian_name_suffix** | **character** |  Suffix name of the committee custodian as reported on the Form 1  | [optional] 
**custodian_name_title** | **character** |  Name title of the committee custodian as reported on the Form 1  | [optional] 
**custodian_phone** | **character** |  Phone number of committee custodian as reported on the Form 1  | [optional] 
**custodian_state** | **character** |  State of committee custodian as reported on the Form 1  | [optional] 
**custodian_street_1** | **character** |  Street address of the committee custodian as reported on the Form 1  | [optional] 
**custodian_street_2** | **character** |  Second line of the street address of the committee custodian as reported on the Form 1  | [optional] 
**custodian_zip** | **character** |  Zip code of the committee custodian as reported on the Form 1  | [optional] 
**cycles** | **array[integer]** |  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year.  | [optional] 
**designation** | **character** | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
**designation_full** | **character** | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
**email** | **character** |  Email as reported on the Form 1  | [optional] 
**fax** | **character** |  Fax as reported on the Form 1  | [optional] 
**filing_frequency** | **character** | The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived  | [optional] 
**first_file_date** | **character** | The day the FEC received the committee&#39;s first filing. This is usually a Form 1 committee registration. | [optional] 
**form_type** | **character** | The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information  | [optional] 
**last_file_date** | **character** | The day the FEC received the committee&#39;s most recent filing | [optional] 
**leadership_pac** | **character** |  Indicates if the committee is a leadership PAC  | [optional] 
**lobbyist_registrant_pac** | **character** |  Indicates if the committee is a lobbyist registrant PAC  | [optional] 
**name** | **character** | The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records. | [optional] 
**organization_type** | **character** | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 
**organization_type_full** | **character** | The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock  | [optional] 
**party** | **character** | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
**party_full** | **character** | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
**party_type** | **character** |  Code for the type of party the committee is, only if applicable  | [optional] 
**party_type_full** | **character** |  Description of the type of party the committee is, only if applicable  | [optional] 
**sponsor_candidate_ids** | **array[character]** |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. This is a filter for Leadership PAC sponsor.  | [optional] 
**state** | **character** |  State of the committee&#39;s address as filed on the Form 1  | [optional] 
**state_full** | **character** |  State of committee as reported on the Form 1  | [optional] 
**street_1** | **character** |  Street address of committee as reported on the Form 1  | [optional] 
**street_2** | **character** |  Second line of street address of committee as reported on the Form 1  | [optional] 
**treasurer_city** | **character** |  City of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_name** | **character** | Name of the Committee&#39;s treasurer. If multiple treasurers for the committee, the most recent treasurer will be shown. | [optional] 
**treasurer_name_1** | **character** |  Name 1 of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_name_2** | **character** |  Name 2 of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_name_middle** | **character** |  Middle name of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_name_prefix** | **character** |  Name Prefix of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_name_suffix** | **character** |  Name suffix of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_name_title** | **character** |  Name title of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_phone** | **character** |  Phone of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_state** | **character** |  State of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_street_1** | **character** |  Street of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_street_2** | **character** |  Second line of the street of committee treasurer as reported on the Form 1  | [optional] 
**treasurer_zip** | **character** |  Zip code of committee treasurer as reported on the Form 1  | [optional] 
**website** | **character** |  Website url as reported on the Form 1  | [optional] 
**zip** | **character** |  Zip code of committee as reported on the Form 1  | [optional] 


