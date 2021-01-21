require 'rails_helper'

RSpec.describe Ticket, type: :model do

  it "has a name" do
    expect(Ticket.new).to respond_to(:name)
  end

  it "has a description" do
    expect(Ticket.new).to respond_to(:description)
  end

  it "has a phone" do
    expect(Ticket.new).to respond_to(:phone)
  end

end
