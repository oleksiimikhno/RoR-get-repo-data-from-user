# frozen_string_literal: true

require 'net/http'

module Types
  class QueryType < Types::BaseObject
    field :node, Types::NodeType, null: true, description: 'Fetches an object given its ID.' do
      argument :id, ID, required: true, description: 'ID of the object.'
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [Types::NodeType, null: true], null: true, description: 'Fetches a list of objects given a list of IDs.' do
      argument :ids, [ID], required: true, description: 'IDs of the objects.'
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    field :github_user, String, null: false do
      argument :name, String, required: true
    end

    field :github_user_repos, String, null: false do
      argument :name, String, required: true
    end

    def github_user(name:)
      api_url = "https://api.github.com/users/#{name.strip}"
      user = get_json(api_url)
      if user['login']
        user_name = user['name'] || user['login']

        { name: user_name }.to_json 
      else
        { errors: user['message'] }.to_json
      end
    end

    def github_user_repos(name:)
      api_url = "https://api.github.com/users/#{name.strip}/repos"
      repos = get_json(api_url)
      repos = repos.map { |repo| repo['name'] }

      { repositories: repos }.to_json
    rescue StandardError
      { errors: repos['message'] }.to_json
    end

    private

    def get_json(url)
      response = Net::HTTP.get(URI(url))
      JSON.parse(response)
    end
  end
end
