require 'rails_helper'

RSpec.describe "Pings", type: :request do
describe 'GET /v0/ping' do 
        it 'shhould return Ping'do
            get'api/v0/pings'

            json_response = JSON.parse(response.body)
            expect(response.status).to eq 200
            expect(json_response['message']).to eq 'Pong'
        end
    end
end
