# # # frozen_string_literal: true

# require 'rails_helper'
# require_relative '../helpers/request_helper'

# RSpec.describe 'Github User repositories request', type: :request do
#   include RequestHelper

#   let(:name) { |user| user.metadata[:name] || 'dhh' }
#   let(:query) do
#     <<~GRAPHQL
#       query {
#         githubUser(name: "#{name}")
#         githubUserRepos(name: "#{name}")
#       }
#     GRAPHQL
#   end

#   it 'check user repositories' do
#     response = get_repositories_response(query, 'user_data')

#     expect(JSON.parse(response)['repositories'].size).to be_positive
#   end

#   it 'repositories type is Array' do
#     response = get_repositories_response(query, 'user_data')

#     expect(JSON.parse(response)['repositories']).to be_an_instance_of(Array)
#   end

#   it 'repositories unexist', name: 'qweqeqweqweqwe' do
#     response = get_repositories_response(query, 'user_unexist_data')

#     expect(JSON.parse(response)['repositories'].size).to eq(0)
#   end

#   it 'repositories empty', name: 'eeee' do
#     response = get_repositories_response(query, 'user_empty_repo')

#     expect(JSON.parse(response)['repositories'].size).to eq(0)
#   end
# end
