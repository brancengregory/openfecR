# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test CandidateApi")

api.instance <- CandidateApi$new()

test_that("CandidateCandidateIdGet", {
  # tests for CandidateCandidateIdGet
  # base path: http://localhost/v1
  #  This endpoint is useful for finding detailed information about a particular candidate. Use the &#x60;candidate_id&#x60; to find the most recent information about that candidate. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param candidate.id character  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
  # @param incumbent.challenge array[character] One-letter code ('I', 'C', 'O') explaining if the candidate is an incumbent, a challenger, or if the seat is open. (optional)
  # @param has.raised.funds character A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param name array[character] Name (candidate or committee) to search for. Alias for 'q'. (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param state array[character] US state or territory where a candidate runs for office (optional)
  # @param cycle array[integer]  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag.  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param year character Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param district array[character] Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. (optional)
  # @param candidate.status array[character] One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param office array[character] Federal office candidate runs for: H, S or P (optional)
  # @param party array[character] Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer] Year of election (optional)
  # @param federal.funds.flag character A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. (optional)
  # @return [CandidateDetailPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CandidateCandidateIdHistoryCycleGet", {
  # tests for CandidateCandidateIdHistoryCycleGet
  # base path: http://localhost/v1
  #  Find out a candidate&#39;s characteristics over time. This is particularly useful if the candidate runs for the same office in different districts or you want to know more about a candidate&#39;s previous races.  This information is organized by &#x60;candidate_id&#x60;, so it won&#39;t help you find a candidate who ran for different offices over time; candidates get a new ID for each office. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param cycle integer  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
  # @param candidate.id character  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param election.full character `True` indicates that full election period of a candidate. `False` indicates that two year election cycle. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @return [CandidateHistoryPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CandidateCandidateIdHistoryGet", {
  # tests for CandidateCandidateIdHistoryGet
  # base path: http://localhost/v1
  #  Find out a candidate&#39;s characteristics over time. This is particularly useful if the candidate runs for the same office in different districts or you want to know more about a candidate&#39;s previous races.  This information is organized by &#x60;candidate_id&#x60;, so it won&#39;t help you find a candidate who ran for different offices over time; candidates get a new ID for each office. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param candidate.id character  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param election.full character `True` indicates that full election period of a candidate. `False` indicates that two year election cycle. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @return [CandidateHistoryPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CandidateCandidateIdTotalsGet", {
  # tests for CandidateCandidateIdTotalsGet
  # base path: http://localhost/v1
  #  This endpoint provides information about a committee&#39;s Form 3, Form 3X, or Form 3P financial reports, which are aggregated by two-year period. We refer to two-year periods as a &#x60;cycle&#x60;.  The cycle is named after the even-numbered year and includes the year before it. To obtain totals from 2013 and 2014, you would use 2014. In odd-numbered years, the current cycle is the next year — for example, in 2015, the current cycle is 2016.  For presidential and Senate candidates, multiple two-year cycles exist between elections.  
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param candidate.id character  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office. 
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param election.full character `True` indicates that full election period of a candidate. `False` indicates that two year election cycle. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param cycle array[integer]  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @return [CommitteeTotalsPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CandidatesGet", {
  # tests for CandidatesGet
  # base path: http://localhost/v1
  #  Fetch basic information about candidates, and use parameters to filter results to the candidates you&#39;re looking for.  Each result reflects a unique FEC candidate ID. That ID is particular to the candidate for a particular office sought. If a candidate runs for the same office multiple times, the ID stays the same. If the same person runs for another office — for example, a House candidate runs for a Senate office — that candidate will get a unique ID for each office. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param incumbent.challenge array[character] One-letter code ('I', 'C', 'O') explaining if the candidate is an incumbent, a challenger, or if the seat is open. (optional)
  # @param has.raised.funds character A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) (optional)
  # @param is.active.candidate character  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param name array[character] Name (candidate or committee) to search for. Alias for 'q'. (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param q array[character] Name of candidate running for office (optional)
  # @param state array[character] US state or territory where a candidate runs for office (optional)
  # @param cycle array[integer]  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag.  (optional)
  # @param min.first.file.date character Selects all candidates whose first filing was received by the FEC after this date. (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param year character Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year. (optional)
  # @param max.first.file.date character Selects all candidates whose first filing was received by the FEC before this date. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param district array[character] Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. (optional)
  # @param candidate.id array[character]  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  (optional)
  # @param candidate.status array[character] One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param office array[character] Federal office candidate runs for: H, S or P (optional)
  # @param party array[character] Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer] Year of election (optional)
  # @param federal.funds.flag character A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. (optional)
  # @return [CandidatePage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CandidatesSearchGet", {
  # tests for CandidatesSearchGet
  # base path: http://localhost/v1
  #  Fetch basic information about candidates and their principal committees.  Each result reflects a unique FEC candidate ID. That ID is assigned to the candidate for a particular office sought. If a candidate runs for the same office over time, that ID stays the same. If the same person runs for multiple offices — for example, a House candidate runs for a Senate office — that candidate will get a unique ID for each office.  The candidate endpoints primarily use data from FEC registration [Form 1](http://www.fec.gov/pdf/forms/fecfrm1.pdf) for committee information and [Form 2](http://www.fec.gov/pdf/forms/fecfrm2.pdf) for candidate information. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param incumbent.challenge array[character] One-letter code ('I', 'C', 'O') explaining if the candidate is an incumbent, a challenger, or if the seat is open. (optional)
  # @param has.raised.funds character A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) (optional)
  # @param is.active.candidate character  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param name array[character] Name (candidate or committee) to search for. Alias for 'q'. (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param q array[character] Name of candidate running for office (optional)
  # @param state array[character] US state or territory where a candidate runs for office (optional)
  # @param cycle array[integer]  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag.  (optional)
  # @param min.first.file.date character Selects all candidates whose first filing was received by the FEC after this date. (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param year character Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year. (optional)
  # @param max.first.file.date character Selects all candidates whose first filing was received by the FEC before this date. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param district array[character] Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. (optional)
  # @param candidate.id array[character]  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  (optional)
  # @param candidate.status array[character] One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param office array[character] Federal office candidate runs for: H, S or P (optional)
  # @param party array[character] Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer] Year of election (optional)
  # @param federal.funds.flag character A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. (optional)
  # @return [CandidatePage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CandidatesTotalsByOfficeByPartyGet", {
  # tests for CandidatesTotalsByOfficeByPartyGet
  # base path: http://localhost/v1
  #  Aggregated candidate receipts and disbursements grouped by office by party by cycle. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param is.active.candidate character  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param office character Federal office candidate runs for: H, S or P (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer]  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  (optional)
  # @return [TotalByOfficeByPartyPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CandidatesTotalsByOfficeGet", {
  # tests for CandidatesTotalsByOfficeGet
  # base path: http://localhost/v1
  #  Aggregated candidate receipts and disbursements grouped by office by cycle. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param is.active.candidate character  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param office character Federal office candidate runs for: H, S or P (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer]  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  (optional)
  # @return [TotalByOfficePage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CandidatesTotalsGet", {
  # tests for CandidatesTotalsGet
  # base path: http://localhost/v1
  #  Aggregated candidate receipts and disbursements grouped by cycle. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param has.raised.funds character A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) (optional)
  # @param max.receipts character Maximum aggregated receipts (optional)
  # @param is.active.candidate character  Candidates who are actively seeking office. If no value is specified, all candidates are returned. When True is specified, only active candidates are returned. When False is specified, only inactive candidates are returned.  (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param min.disbursements character Minimum aggregated disbursements (optional)
  # @param election.full character `True` indicates that full election period of a candidate. `False` indicates that two year election cycle. (optional)
  # @param min.cash.on.hand.end.period character Minimum cash on hand (optional)
  # @param min.debts.owed.by.committee character Minimum debt (optional)
  # @param min.receipts character Minimum aggregated receipts (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param q array[character] Name of candidate running for office (optional)
  # @param max.disbursements character Maximum aggregated disbursements (optional)
  # @param max.cash.on.hand.end.period character Maximum cash on hand (optional)
  # @param state array[character] State of candidate (optional)
  # @param cycle array[integer]  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param district array[character] District of candidate (optional)
  # @param candidate.id array[character]  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param office array[character] Federal office candidate runs for: H, S or P (optional)
  # @param party array[character] Three-letter party code (optional)
  # @param max.debts.owed.by.committee character Maximum debt (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer]  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.  (optional)
  # @param federal.funds.flag character A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. (optional)
  # @return [CandidateHistoryTotalPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CommitteeCommitteeIdCandidatesGet", {
  # tests for CommitteeCommitteeIdCandidatesGet
  # base path: http://localhost/v1
  #  This endpoint is useful for finding detailed information about a particular candidate. Use the &#x60;candidate_id&#x60; to find the most recent information about that candidate. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param committee.id character  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
  # @param incumbent.challenge array[character] One-letter code ('I', 'C', 'O') explaining if the candidate is an incumbent, a challenger, or if the seat is open. (optional)
  # @param has.raised.funds character A boolean that describes if a candidate's committee has ever received any receipts for their campaign for this particular office. (Candidates have separate candidate IDs for each office.) (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param name array[character] Name (candidate or committee) to search for. Alias for 'q'. (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param state array[character] US state or territory where a candidate runs for office (optional)
  # @param cycle array[integer]  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag.  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param year character Retrieve records pertaining to a particular election year. The list of election years is based on a candidate filing a statement of candidacy (F2) for that year. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param district array[character] Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00. (optional)
  # @param candidate.status array[character] One-letter code explaining if the candidate is:         - C present candidate         - F future candidate         - N not yet a candidate         - P prior candidate  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param office array[character] Federal office candidate runs for: H, S or P (optional)
  # @param party array[character] Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party. (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer] Year of election (optional)
  # @param federal.funds.flag character A boolean the describes if a presidential candidate has accepted federal funds. The flag will be false for House and Senate candidates. (optional)
  # @return [CandidateDetailPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CommitteeCommitteeIdCandidatesHistoryCycleGet", {
  # tests for CommitteeCommitteeIdCandidatesHistoryCycleGet
  # base path: http://localhost/v1
  #  Find out a candidate&#39;s characteristics over time. This is particularly useful if the candidate runs for the same office in different districts or you want to know more about a candidate&#39;s previous races.  This information is organized by &#x60;candidate_id&#x60;, so it won&#39;t help you find a candidate who ran for different offices over time; candidates get a new ID for each office. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param cycle integer  Two-year election cycle in which a candidate runs for office. Calculated from Form 2. The cycle begins with an odd year and is named for its ending, even year. This cycle follows the traditional house election cycle and subdivides the presidential and Senate elections into comparable two-year blocks. To retrieve data for the entire four years of a presidential term or six years of a senatorial term, you will need the `election_full` flag. 
  # @param committee.id character  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param election.full character `True` indicates that full election period of a candidate. `False` indicates that two year election cycle. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @return [CandidateHistoryPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CommitteeCommitteeIdCandidatesHistoryGet", {
  # tests for CommitteeCommitteeIdCandidatesHistoryGet
  # base path: http://localhost/v1
  #  Find out a candidate&#39;s characteristics over time. This is particularly useful if the candidate runs for the same office in different districts or you want to know more about a candidate&#39;s previous races.  This information is organized by &#x60;candidate_id&#x60;, so it won&#39;t help you find a candidate who ran for different offices over time; candidates get a new ID for each office. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param committee.id character  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits. 
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param election.full character `True` indicates that full election period of a candidate. `False` indicates that two year election cycle. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @return [CandidateHistoryPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

