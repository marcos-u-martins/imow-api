module Types
  class QueryType < BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_imows, [ImowType], null: false

    def all_imows
      Imow.all
    end
  end
end
