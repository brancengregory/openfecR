# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test CommitteeDetail")

model.instance <- CommitteeDetail$new()

test_that("affiliated_committee_name", {
  # tests for the property `affiliated_committee_name` (character)
  #  Affiliated committee or connected organization 

  # uncomment below to test the property 
  #expect_equal(model.instance$`affiliated_committee_name`, "EXPECTED_RESULT")
})

test_that("candidate_ids", {
  # tests for the property `candidate_ids` (array[character])
  #  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 

  # uncomment below to test the property 
  #expect_equal(model.instance$`candidate_ids`, "EXPECTED_RESULT")
})

test_that("city", {
  # tests for the property `city` (character)
  #  City of committee as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`city`, "EXPECTED_RESULT")
})

test_that("committee_id", {
  # tests for the property `committee_id` (character)
  #  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id&#39;s begin with the letter C which is followed by eight digits. 

  # uncomment below to test the property 
  #expect_equal(model.instance$`committee_id`, "EXPECTED_RESULT")
})

test_that("committee_type", {
  # tests for the property `committee_type` (character)
  # The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 

  # uncomment below to test the property 
  #expect_equal(model.instance$`committee_type`, "EXPECTED_RESULT")
})

test_that("committee_type_full", {
  # tests for the property `committee_type_full` (character)
  # The one-letter type code of the organization:         - C communication cost         - D delegate         - E electioneering communication         - H House         - I independent expenditor (person or group)         - N PAC - nonqualified         - O independent expenditure-only (super PACs)         - P presidential         - Q PAC - qualified         - S Senate         - U single candidate independent expenditure         - V PAC with non-contribution account, nonqualified         - W PAC with non-contribution account, qualified         - X party, nonqualified         - Y party, qualified         - Z national party non-federal account 

  # uncomment below to test the property 
  #expect_equal(model.instance$`committee_type_full`, "EXPECTED_RESULT")
})

test_that("custodian_city", {
  # tests for the property `custodian_city` (character)
  #  City of committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_city`, "EXPECTED_RESULT")
})

test_that("custodian_name_1", {
  # tests for the property `custodian_name_1` (character)
  #  Name 1 of committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_name_1`, "EXPECTED_RESULT")
})

test_that("custodian_name_2", {
  # tests for the property `custodian_name_2` (character)
  #  Name 2 of committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_name_2`, "EXPECTED_RESULT")
})

test_that("custodian_name_full", {
  # tests for the property `custodian_name_full` (character)
  #  Full name of committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_name_full`, "EXPECTED_RESULT")
})

test_that("custodian_name_middle", {
  # tests for the property `custodian_name_middle` (character)
  #  Middle name of committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_name_middle`, "EXPECTED_RESULT")
})

test_that("custodian_name_prefix", {
  # tests for the property `custodian_name_prefix` (character)
  #  Name prefix of committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_name_prefix`, "EXPECTED_RESULT")
})

test_that("custodian_name_suffix", {
  # tests for the property `custodian_name_suffix` (character)
  #  Suffix name of the committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_name_suffix`, "EXPECTED_RESULT")
})

test_that("custodian_name_title", {
  # tests for the property `custodian_name_title` (character)
  #  Name title of the committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_name_title`, "EXPECTED_RESULT")
})

test_that("custodian_phone", {
  # tests for the property `custodian_phone` (character)
  #  Phone number of committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_phone`, "EXPECTED_RESULT")
})

test_that("custodian_state", {
  # tests for the property `custodian_state` (character)
  #  State of committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_state`, "EXPECTED_RESULT")
})

test_that("custodian_street_1", {
  # tests for the property `custodian_street_1` (character)
  #  Street address of the committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_street_1`, "EXPECTED_RESULT")
})

test_that("custodian_street_2", {
  # tests for the property `custodian_street_2` (character)
  #  Second line of the street address of the committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_street_2`, "EXPECTED_RESULT")
})

test_that("custodian_zip", {
  # tests for the property `custodian_zip` (character)
  #  Zip code of the committee custodian as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`custodian_zip`, "EXPECTED_RESULT")
})

test_that("cycles", {
  # tests for the property `cycles` (array[integer])
  #  A two year election cycle that the committee was active- (after original registration date but before expiration date in Form 1s) The cycle begins with an odd year and is named for its ending, even year. 

  # uncomment below to test the property 
  #expect_equal(model.instance$`cycles`, "EXPECTED_RESULT")
})

test_that("designation", {
  # tests for the property `designation` (character)
  # The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 

  # uncomment below to test the property 
  #expect_equal(model.instance$`designation`, "EXPECTED_RESULT")
})

test_that("designation_full", {
  # tests for the property `designation_full` (character)
  # The one-letter designation code of the organization:          - A authorized by a candidate          - J joint fundraising committee          - P principal campaign committee of a candidate          - U unauthorized          - B lobbyist/registrant PAC          - D leadership PAC 

  # uncomment below to test the property 
  #expect_equal(model.instance$`designation_full`, "EXPECTED_RESULT")
})

test_that("email", {
  # tests for the property `email` (character)
  #  Email as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`email`, "EXPECTED_RESULT")
})

test_that("fax", {
  # tests for the property `fax` (character)
  #  Fax as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`fax`, "EXPECTED_RESULT")
})

test_that("filing_frequency", {
  # tests for the property `filing_frequency` (character)
  # The one-letter      code of the filing frequency:          - A Administratively terminated          - D Debt          - M Monthly filer          - Q Quarterly filer          - T Terminated          - W Waived 

  # uncomment below to test the property 
  #expect_equal(model.instance$`filing_frequency`, "EXPECTED_RESULT")
})

test_that("first_file_date", {
  # tests for the property `first_file_date` (character)
  # The day the FEC received the committee&#39;s first filing. This is usually a Form 1 committee registration.

  # uncomment below to test the property 
  #expect_equal(model.instance$`first_file_date`, "EXPECTED_RESULT")
})

test_that("form_type", {
  # tests for the property `form_type` (character)
  # The form where the underlying data comes from, for example, Form 1 would appear as F1:     - F1   Statement of Organization     - F1M  Notification of Multicandidate Status     - F2   Statement of Candidacy     - F3   Report of Receipts and Disbursements for an Authorized Committee     - F3P  Report of Receipts and Disbursements by an Authorized Committee of a Candidate for     The Office of President or Vice President     - F3L  Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs     - F3X  Report of Receipts and Disbursements for other than an Authorized Committee     - F4   Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention     - F5   Report of Independent Expenditures Made and Contributions Received     - F6   48 Hour Notice of Contributions/Loans Received     - F7   Report of Communication Costs by Corporations and Membership Organizations     - F8   Debt Settlement Plan     - F9   24 Hour Notice of Disbursements for Electioneering Communications     - F13  Report of Donations Accepted for Inaugural Committee     - F99  Miscellaneous Text     - FRQ  Request for Additional Information 

  # uncomment below to test the property 
  #expect_equal(model.instance$`form_type`, "EXPECTED_RESULT")
})

test_that("last_file_date", {
  # tests for the property `last_file_date` (character)
  # The day the FEC received the committee&#39;s most recent filing

  # uncomment below to test the property 
  #expect_equal(model.instance$`last_file_date`, "EXPECTED_RESULT")
})

test_that("leadership_pac", {
  # tests for the property `leadership_pac` (character)
  #  Indicates if the committee is a leadership PAC 

  # uncomment below to test the property 
  #expect_equal(model.instance$`leadership_pac`, "EXPECTED_RESULT")
})

test_that("lobbyist_registrant_pac", {
  # tests for the property `lobbyist_registrant_pac` (character)
  #  Indicates if the committee is a lobbyist registrant PAC 

  # uncomment below to test the property 
  #expect_equal(model.instance$`lobbyist_registrant_pac`, "EXPECTED_RESULT")
})

test_that("name", {
  # tests for the property `name` (character)
  # The name of the committee. If a committee changes its name,     the most recent name will be shown. Committee names are not unique. Use committee_id     for looking up records.

  # uncomment below to test the property 
  #expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("organization_type", {
  # tests for the property `organization_type` (character)
  # The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock 

  # uncomment below to test the property 
  #expect_equal(model.instance$`organization_type`, "EXPECTED_RESULT")
})

test_that("organization_type_full", {
  # tests for the property `organization_type_full` (character)
  # The one-letter code for the kind for organization:         - C corporation         - L labor organization         - M membership organization         - T trade association         - V cooperative         - W corporation without capital stock 

  # uncomment below to test the property 
  #expect_equal(model.instance$`organization_type_full`, "EXPECTED_RESULT")
})

test_that("party", {
  # tests for the property `party` (character)
  # Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.

  # uncomment below to test the property 
  #expect_equal(model.instance$`party`, "EXPECTED_RESULT")
})

test_that("party_full", {
  # tests for the property `party_full` (character)
  # Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.

  # uncomment below to test the property 
  #expect_equal(model.instance$`party_full`, "EXPECTED_RESULT")
})

test_that("party_type", {
  # tests for the property `party_type` (character)
  #  Code for the type of party the committee is, only if applicable 

  # uncomment below to test the property 
  #expect_equal(model.instance$`party_type`, "EXPECTED_RESULT")
})

test_that("party_type_full", {
  # tests for the property `party_type_full` (character)
  #  Description of the type of party the committee is, only if applicable 

  # uncomment below to test the property 
  #expect_equal(model.instance$`party_type_full`, "EXPECTED_RESULT")
})

test_that("sponsor_candidate_ids", {
  # tests for the property `sponsor_candidate_ids` (array[character])
  #  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. This is a filter for Leadership PAC sponsor. 

  # uncomment below to test the property 
  #expect_equal(model.instance$`sponsor_candidate_ids`, "EXPECTED_RESULT")
})

test_that("state", {
  # tests for the property `state` (character)
  #  State of the committee&#39;s address as filed on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`state`, "EXPECTED_RESULT")
})

test_that("state_full", {
  # tests for the property `state_full` (character)
  #  State of committee as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`state_full`, "EXPECTED_RESULT")
})

test_that("street_1", {
  # tests for the property `street_1` (character)
  #  Street address of committee as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`street_1`, "EXPECTED_RESULT")
})

test_that("street_2", {
  # tests for the property `street_2` (character)
  #  Second line of street address of committee as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`street_2`, "EXPECTED_RESULT")
})

test_that("treasurer_city", {
  # tests for the property `treasurer_city` (character)
  #  City of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_city`, "EXPECTED_RESULT")
})

test_that("treasurer_name", {
  # tests for the property `treasurer_name` (character)
  # Name of the Committee&#39;s treasurer. If multiple treasurers for the committee, the most recent treasurer will be shown.

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_name`, "EXPECTED_RESULT")
})

test_that("treasurer_name_1", {
  # tests for the property `treasurer_name_1` (character)
  #  Name 1 of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_name_1`, "EXPECTED_RESULT")
})

test_that("treasurer_name_2", {
  # tests for the property `treasurer_name_2` (character)
  #  Name 2 of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_name_2`, "EXPECTED_RESULT")
})

test_that("treasurer_name_middle", {
  # tests for the property `treasurer_name_middle` (character)
  #  Middle name of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_name_middle`, "EXPECTED_RESULT")
})

test_that("treasurer_name_prefix", {
  # tests for the property `treasurer_name_prefix` (character)
  #  Name Prefix of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_name_prefix`, "EXPECTED_RESULT")
})

test_that("treasurer_name_suffix", {
  # tests for the property `treasurer_name_suffix` (character)
  #  Name suffix of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_name_suffix`, "EXPECTED_RESULT")
})

test_that("treasurer_name_title", {
  # tests for the property `treasurer_name_title` (character)
  #  Name title of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_name_title`, "EXPECTED_RESULT")
})

test_that("treasurer_phone", {
  # tests for the property `treasurer_phone` (character)
  #  Phone of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_phone`, "EXPECTED_RESULT")
})

test_that("treasurer_state", {
  # tests for the property `treasurer_state` (character)
  #  State of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_state`, "EXPECTED_RESULT")
})

test_that("treasurer_street_1", {
  # tests for the property `treasurer_street_1` (character)
  #  Street of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_street_1`, "EXPECTED_RESULT")
})

test_that("treasurer_street_2", {
  # tests for the property `treasurer_street_2` (character)
  #  Second line of the street of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_street_2`, "EXPECTED_RESULT")
})

test_that("treasurer_zip", {
  # tests for the property `treasurer_zip` (character)
  #  Zip code of committee treasurer as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`treasurer_zip`, "EXPECTED_RESULT")
})

test_that("website", {
  # tests for the property `website` (character)
  #  Website url as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`website`, "EXPECTED_RESULT")
})

test_that("zip", {
  # tests for the property `zip` (character)
  #  Zip code of committee as reported on the Form 1 

  # uncomment below to test the property 
  #expect_equal(model.instance$`zip`, "EXPECTED_RESULT")
})

