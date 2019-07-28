require 'rails_helper'

RSpec.describe Employment, type: :model do
  let(:user) { create(:user) }
  let(:company) { create(:company) }

  subject { Employment.new(params) }

  let(:params) {
    {
      user: user,
      company: company,
    }
  }

  describe '#valid?' do
    context 'with valid attributes' do
      it { should be_valid }
    end

    context 'without user' do
      let(:user) { nil }
      it { should be_invalid }
    end

    context 'without company' do
      let(:company) { nil }
      it { should be_invalid }
    end

    context 'when employment exists' do
      before(:each) do
        Employment.create!(params)
      end

      context 'with duplicated user' do
        it { should be_invalid }
      end

      context 'with a new user' do
        let(:user2) { create(:user) }
        subject { Employment.new(user: user2, company: company) }
        it { should be_valid }
      end

      context 'with a new company' do
        let(:company2) { create(:company) }
        subject { Employment.new(user: user, company: company2) }
        it { should be_valid }
      end
    end
  end
end
