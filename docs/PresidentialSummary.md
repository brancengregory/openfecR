# openapi::PresidentialSummary


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**candidate_contributions_less_repayments** | **numeric** |  candidate contributions less repayments  | [optional] 
**candidate_id** | **character** |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  | [optional] 
**candidate_last_name** | **character** |  Candidate last name  | [optional] 
**candidate_name** | **character** | Name of candidate running for office | [optional] 
**candidate_party_affiliation** | **character** | Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. | [optional] 
**cash_on_hand_end** | **numeric** | Ending cash balance on the most recent filing | [optional] 
**committee_designation** | **character** | The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC  | [optional] 
**committee_id** | **character** |  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  | [optional] 
**committee_name** | **character** | The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records. | [optional] 
**committee_type** | **character** | The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account  | [optional] 
**debts_owed_by_committee** | **numeric** | Debts owed by the committee | [optional] 
**disbursements_less_offsets** | **numeric** |  disbursements less offsets  | [optional] 
**election_year** | **integer** | Year of election | [optional] 
**exempt_legal_accounting_disbursement** | **numeric** |  exempt legal accounting disbursement  | [optional] 
**federal_funds** | **numeric** | Federal funds: Public funding of presidential elections means that qualified presidential candidates                 receive federal government funds to pay for the valid expenses of their political campaigns                 in both the primary and general elections. | [optional] 
**fundraising_disbursements** | **numeric** |  fundraising disbursements  | [optional] 
**individual_contributions_less_refunds** | **numeric** |  individual contributions less refunds  | [optional] 
**net_receipts** | **numeric** |  Contributions received  | [optional] 
**offsets_to_operating_expenditures** | **numeric** | Offsets to operating expenditures | [optional] 
**operating_expenditures** | **numeric** | Total operating expenditures | [optional] 
**other_disbursements** | **numeric** | Other disbursements | [optional] 
**pac_contributions_less_refunds** | **numeric** |  pac contributions less refunds  | [optional] 
**party_contributions_less_refunds** | **numeric** |  party contributions less refunds  | [optional] 
**repayments_loans_made_by_candidate** | **numeric** |  repayments loans made by candidate  | [optional] 
**repayments_other_loans** | **numeric** |  repayments other loans  | [optional] 
**rounded_net_receipts** | **numeric** |  Net receipts, in millions  | [optional] 
**total_contribution_refunds** | **numeric** |  total contribution refunds  | [optional] 
**total_loan_repayments_made** | **numeric** |  total loan repayments made  | [optional] 
**transfers_from_affiliated_committees** | **numeric** |  transfers from affiliated committees  | [optional] 
**transfers_to_other_authorized_committees** | **numeric** |  transfers to other authorized committees  | [optional] 


