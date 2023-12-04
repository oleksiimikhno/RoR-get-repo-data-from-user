# frozen_string_literal: true

# Query request helper to the /graphql
module RequestHelper
  def get_user_response(query, cassette)
    response = VCR.use_cassette(cassette) do
      GraphQlSchema.execute(query)
    end

    response.dig('data', 'githubUser')
  end

  def get_repositories_response(query, cassette)
    response = VCR.use_cassette(cassette) do
      GraphQlSchema.execute(query)
    end

    response.dig('data', 'githubUserRepos')
  end
end
