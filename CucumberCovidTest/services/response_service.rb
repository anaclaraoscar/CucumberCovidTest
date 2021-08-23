module User
  include HTTParty
  base_uri 'https://disease.sh/v3/covid-19'
  format :json
end