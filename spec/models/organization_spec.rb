require 'rails_helper'

RSpec.describe Organization, type: :model do

it "has a name" do
  expect(Organization.new).to respond_to(:name)
end

it "has a status" do
  expect(Organization.new).to respond_to(:status)
end

it "has a phone" do
  expect(Organization.new).to respond_to(:phone)
end

it "has an email" do
  expect(Organization.new).to respond_to(:email)
end

it "has a description" do
  expect(Organization.new).to respond_to(:description)
end

it "has a rejection reason" do
  expect(Organization.new).to respond_to(:rejection_reason)
end

it "has liability insurance" do
  expect(Organization.new).to respond_to(:liability_insurance)
end

it "has a primary name" do
  expect(Organization.new).to respond_to(:primary_name)
end

it "has a secondary name" do
  expect(Organization.new).to respond_to(:secondary_name)
end

it "has a secondary phone" do
  expect(Organization.new).to respond_to(:secondary_phone)
end

it "has a title" do
  expect(Organization.new).to respond_to(:title)
end

it "has transportation" do
  expect(Organization.new).to respond_to(:transportation)
end

end
