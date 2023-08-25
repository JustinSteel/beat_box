require './lib/node'
require 'pry'
RSpec.describe Node do
  it 'exists' do
    node = Node.new("plop")

    expect(node).to be_instance_of(Node)
  end
  require 'pry'; binding.pry
end