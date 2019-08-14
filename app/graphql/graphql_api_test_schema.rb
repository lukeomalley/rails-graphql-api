# frozen_string_literal: true

class GraphqlApiTestSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
