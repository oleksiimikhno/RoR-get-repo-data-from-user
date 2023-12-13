# frozen_string_literal: true

require 'rails_helper'
require_relative '../helpers/request_helper'

RSpec.describe 'Github User request', type: :request do
  include RequestHelper

  let(:query) do
    <<~GRAPHQL
      query {
        githubUser(name: "#{name}")
        githubUserRepos(name: "#{name}")
      }
    GRAPHQL
  end

  let(:name) { |user| user.metadata[:name] || 'dhh' }
  let(:response_user) { get_user_response(query, 'user_data') }

  it 'check user name' do
    expect(JSON.parse(response_user)['name']).to eq('David Heinemeier Hansson')
  end

  it 'user unexist', name: 'qweqeqweqweqwe' do
    response = get_user_response(query, 'user_unexist_data')

    expect(JSON.parse(response)['errors']).to eq('Not Found')
  end

  it 'user type is String' do
    expect(JSON.parse(response_user)['name']).to be_an_instance_of(String)
  end
end
