require 'spec_helper'

describe Category do

  it {
    #there must be at least one record in db to validate uniqness , it's a known bug
    category = Category.create(name: 'test')
    should validate_uniqueness_of(:name)
  }
end
