describe 'group GET method' do
  it "lists COVID-19 data in Brazil" do
    @users = User.get('/countries/Brazil')
    expect(@users.code).to eq(200)
    expect(@users.body).to match_json_schema('covid')
    puts @users.message
  end
end