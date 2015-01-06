require 'spec_helper'
require 'pp'

describe server('provisiontest') do
  describe http('http://192.168.20.10/') do
    it 'responds with 403 forbidden' do
      expect(response.status).to eq 403
    end
  end
end
