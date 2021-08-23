require "httparty"
require "rspec"
require_relative '../../spec/get_spec.rb'
require_relative '../../services/response_service.rb'

Given(/^I have the right API route to receive data about COVID-19 in Brazil$/)do
  puts 'https://disease.sh/v3/covid-19/countries/Brazil'
end

When(/^I execute a GET requisition$/)do
  $response = @users
end

Then('I display a 200 status')do
  if $response
    expect($response.code).to eq(200)
    expect($response.code).to match_json_schema('covid')
    puts $response
    puts "Status 200 OK"
  end
end