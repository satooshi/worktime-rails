require 'rails_helper'
require 'models/time_record'

RSpec.describe TimeRecord, type: :model do
  it_behaves_like 'a time record model'
end
