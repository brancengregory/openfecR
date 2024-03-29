# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test EfilingApi")

api.instance <- EfilingApi$new()

test_that("EfileFilingsGet", {
  # tests for EfileFilingsGet
  # base path: http://localhost/v1
  # Basic information about electronic files coming into the FEC, posted as they are received.
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param min.receipt.date character  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param file.number array[integer] Filing ID number (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param max.receipt.date character  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param committee.id array[character]  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @return [EFilingsPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("EfileReportsHouseSenateGet", {
  # tests for EfileReportsHouseSenateGet
  # base path: http://localhost/v1
  #  Key financial data reported periodically by committees as they are reported. This feed includes summary information from the the House F3 reports, the presidential F3p reports and the PAC and party F3x reports.  Generally, committees file reports on a quarterly or monthly basis, but some must also submit a report 12 days before primary elections. Therefore, during the primary season, the period covered by this file may be different for different committees. These totals also incorporate any changes made by committees, if any report covering the period is amended.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param min.receipt.date character  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param file.number array[integer] Filing ID number (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param max.receipt.date character  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param committee.id array[character]  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @return [BaseF3FilingPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("EfileReportsPacPartyGet", {
  # tests for EfileReportsPacPartyGet
  # base path: http://localhost/v1
  #  Key financial data reported periodically by committees as they are reported. This feed includes summary information from the the House F3 reports, the presidential F3p reports and the PAC and party F3x reports.  Generally, committees file reports on a quarterly or monthly basis, but some must also submit a report 12 days before primary elections. Therefore, during the primary season, the period covered by this file may be different for different committees. These totals also incorporate any changes made by committees, if any report covering the period is amended.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param min.receipt.date character  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param file.number array[integer] Filing ID number (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param max.receipt.date character  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param committee.id array[character]  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @return [BaseF3XFilingPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("EfileReportsPresidentialGet", {
  # tests for EfileReportsPresidentialGet
  # base path: http://localhost/v1
  #  Key financial data reported periodically by committees as they are reported. This feed includes summary information from the the House F3 reports, the presidential F3p reports and the PAC and party F3x reports.  Generally, committees file reports on a quarterly or monthly basis, but some must also submit a report 12 days before primary elections. Therefore, during the primary season, the period covered by this file may be different for different committees. These totals also incorporate any changes made by committees, if any report covering the period is amended.  DISCLAIMER: The field labels contained within this resource are subject to change.  We are attempting to succinctly label these fields while conveying clear meaning to ensure accessibility for all users. 
  # @param api.key character  API key for https://api.data.gov. Get one at https://api.data.gov/signup. 
  # @param min.receipt.date character  Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)  (optional)
  # @param sort.hide.null character Hide null values on sorted column(s). (optional)
  # @param file.number array[integer] Filing ID number (optional)
  # @param per.page integer The number of results returned per page. Defaults to 20. (optional)
  # @param max.receipt.date character  Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)  (optional)
  # @param sort.nulls.last character Toggle that sorts null values last (optional)
  # @param committee.id array[character]  A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.  (optional)
  # @param sort.null.only character Toggle that filters out all rows having sort column that is non-null (optional)
  # @param sort character Provide a field to sort by. Use `-` for descending order.  (optional)
  # @param page integer For paginating through results, starting at page 1 (optional)
  # @return [BaseF3PFilingPage]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

