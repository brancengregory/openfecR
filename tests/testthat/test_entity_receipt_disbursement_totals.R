# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test EntityReceiptDisbursementTotals")

model.instance <- EntityReceiptDisbursementTotals$new()

test_that("cumulative_candidate_disbursements", {
  # tests for the property `cumulative_candidate_disbursements` (numeric)
  # Cumulative candidate disbursements in a two year period, adjusted to avoid double counting.

  # uncomment below to test the property 
  #expect_equal(model.instance$`cumulative_candidate_disbursements`, "EXPECTED_RESULT")
})

test_that("cumulative_candidate_receipts", {
  # tests for the property `cumulative_candidate_receipts` (numeric)
  # Cumulative candidate receipts in a two year period, adjusted to avoid double counting.

  # uncomment below to test the property 
  #expect_equal(model.instance$`cumulative_candidate_receipts`, "EXPECTED_RESULT")
})

test_that("cumulative_pac_disbursements", {
  # tests for the property `cumulative_pac_disbursements` (numeric)
  # Cumulative PAC disbursements in a two year period, adjusted to avoid double counting.

  # uncomment below to test the property 
  #expect_equal(model.instance$`cumulative_pac_disbursements`, "EXPECTED_RESULT")
})

test_that("cumulative_pac_receipts", {
  # tests for the property `cumulative_pac_receipts` (numeric)
  # Cumulative PAC recipts in a two year period, adjusted to avoid double counting.

  # uncomment below to test the property 
  #expect_equal(model.instance$`cumulative_pac_receipts`, "EXPECTED_RESULT")
})

test_that("cumulative_party_disbursements", {
  # tests for the property `cumulative_party_disbursements` (numeric)
  # Cumulative party disbursements in a two year period, adjusted to avoid double counting.

  # uncomment below to test the property 
  #expect_equal(model.instance$`cumulative_party_disbursements`, "EXPECTED_RESULT")
})

test_that("cumulative_party_receipts", {
  # tests for the property `cumulative_party_receipts` (numeric)
  # Cumulative party receipts in a two year period, adjusted to avoid double counting.

  # uncomment below to test the property 
  #expect_equal(model.instance$`cumulative_party_receipts`, "EXPECTED_RESULT")
})

test_that("cycle", {
  # tests for the property `cycle` (integer)
  #  Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year. 

  # uncomment below to test the property 
  #expect_equal(model.instance$`cycle`, "EXPECTED_RESULT")
})

test_that("end_date", {
  # tests for the property `end_date` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`end_date`, "EXPECTED_RESULT")
})

