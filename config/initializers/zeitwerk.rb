# frozen_string_literal: true

Rails.autoloaders.each do |autoloader|
  autoloader.inflector.inflect(
    'graphql_schema' => 'GraphQLSchema',
  )
end
