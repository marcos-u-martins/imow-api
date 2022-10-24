module Mutations
    class CreateImow < BaseMutation
      # arguments passed to the `resolve` method
      argument :title, String, required: true
      argument :body, String, required: true
  
      # return type from the mutation
      type Types::ImowType
  
      def resolve(title: nil, body: nil)
        Imow.create!(
          title: title,
          body: body,
        )
      end
    end
  end