require './node'

Rspe.describe Node do
  it 'exists'
    node = Node.new("doop")

    expect(node).to be_instance_of(Node)
end