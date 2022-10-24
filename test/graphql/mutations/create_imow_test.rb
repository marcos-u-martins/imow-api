require 'test_helper'

class Mutations::CreateImowTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateImow.new(object: nil, field: nil, context: {}).resolve(**args)
  end

  test 'create a new imow' do
    imow = perform(
      body: 'http://example.com',
      title: 'description',
    )

    assert imow.persisted?
    assert_equal imow.title, 'description'
    assert_equal imow.body, 'http://example.com'
  end
end