# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test PresidentialApi")

api.instance <- PresidentialApi$new()

test_that("PresidentialContributionsByCandidateGet", {
  # tests for PresidentialContributionsByCandidateGet
  # base path: http://localhost/v1
  #  Net receipts per candidate.  Filter with &#x60;contributor_state&#x3D;&#39;US&#39;&#x60; for national totals 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param contributor.state array[character] State of contributor (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer] Year of election (optional)
  # @return [PresidentialByCandidatePage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PresidentialContributionsBySizeGet", {
  # tests for PresidentialContributionsBySizeGet
  # base path: http://localhost/v1
  #  Contribution receipts by size per candidate.  Filter by candidate_id, election_year and/or size 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param size array[integer]  The total all contributions in the following ranges: ```   -0    $200 and under   -200  $200.01 - $499.99   -500  $500 - $999.99   -1000 $1000 - $1999.99   -2000 $2000 + ``` Unitemized contributions are included in the `0` category.  (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param candidate.id array[character]  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer] Year of election (optional)
  # @return [PresidentialBySizePage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PresidentialContributionsByStateGet", {
  # tests for PresidentialContributionsByStateGet
  # base path: http://localhost/v1
  #  Contribution receipts by state per candidate.  Filter by candidate_id and/or election_year 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param candidate.id array[character]  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer] Year of election (optional)
  # @return [PresidentialByStatePage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PresidentialCoverageEndDateGet", {
  # tests for PresidentialCoverageEndDateGet
  # base path: http://localhost/v1
  #  Coverage end date per candidate.  Filter by candidate_id and/or election_year 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param candidate.id array[character]  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer] Year of election (optional)
  # @return [PresidentialCoveragePage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PresidentialFinancialSummaryGet", {
  # tests for PresidentialFinancialSummaryGet
  # base path: http://localhost/v1
  #  Financial summary per candidate.  Filter by candidate_id and/or election_year 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param candidate.id array[character]  A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.   -P00000001    All candidates   -P00000002    Democrasts   -P00000003    Republicans  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @param election.year array[integer] Year of election (optional)
  # @return [PresidentialSummaryPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

