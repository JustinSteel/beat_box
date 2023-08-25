require './lib/node'
require 'pry'
RSpec.describe Node do
  it 'exists' do
    node = Node.new("plop")

    expect(node).to be_instance_of(Node)
  end
  it 'node data ' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
  end
  it 'next node indicator' do
    node = Node.new("plop")

    expect(node.next_node).to eq(nil)
  end
end