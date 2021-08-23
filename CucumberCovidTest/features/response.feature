Feature: Response
  As a developer
  I want to be able to receive a valid response when I make an API call


  Scenario: receive a successful response
    Given I have the right API route to receive data about COVID-19 in Brazil
    When I execute a GET requisition
    Then I display a 200 status
