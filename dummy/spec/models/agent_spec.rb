require 'rails_helper'

RSpec.describe Agent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Agent, '#favorite_gadget' do
  it 'returns one item, the favorite gadget of the agent ' do
    #set up
    agent = Agent.create(name: "James Bond", favorite_gadget: 'Walther PPK')
    q =Quartermaster.create(name: 'Q')
    q.technical_briefing(agent)
    #exercise
    favorite_gadget = agent.favorite_gadget
    #expectation
    expect(agent.favorite_gadget).to eq 'Walther PPK'
  end
 
end