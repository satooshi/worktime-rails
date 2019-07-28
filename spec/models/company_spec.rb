require 'rails_helper'

RSpec.describe Company, type: :model do
  describe '#valid?' do
    subject { Company.new(params) }
    let(:params) { { name: name } }
    let(:name) { 'Test company' }

    context 'with valid attributes' do
      it { should be_valid }
    end

    context 'without name' do
      let(:name) { nil }
      it { should be_invalid }
    end
  end
end
