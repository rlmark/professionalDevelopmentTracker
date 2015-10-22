require 'rails_helper'

RSpec.describe Tag, type: :model do
  let(:tag) { Tag.new(name: "Interwebs") }

  describe ".validations" do
    it "must have a name" do
      expect(tag.valid?).to eq true
      tag.name = nil
      expect(tag.valid?).to eq false
    end

    it "must be unique" do
      tag = Tag.create!(name: "Wires")
      duplicate_tag = Tag.new(name: "Wires")
      expect(duplicate_tag.valid?).to eq false
      lower_case_tag = Tag.new(name: "wires")
      expect(lower_case_tag.valid?).to eq false
    end
  end

  describe ".order_tags" do
    it "returns a sorted array" do
      tag1 = Tag.create!(name: "Zebra")
      tag2 = Tag.create!(name: "Apple")
      expect(Tag.all).to eq [tag1, tag2]
      expect(Tag.order_tags).to eq [tag2, tag1]
    end
  end
end
