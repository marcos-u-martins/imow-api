module Mutations
  # Parent for all mutations
  class BaseMutation < GraphQL::Schema::Mutation
    null false
  end
end