require 'rails_helper'

describe Image do
  it { should have_many(:tags) }
end

describe Image do
  it 'is private by default' do
    image = FactoryBot.create(:image)
    image.name.should eq 'Knit the sock monkey'
  end
end
