require 'rails_helper'

RSpec.describe User, type: :model do
  let(:params) {
    {
      name: name,
      email: email,
      password: password,
    }
  }
  let(:name) { 'Taro' }
  let(:email) { "#{SecureRandom.uuid}@example.com" }
  let(:password) { SecureRandom.uuid }

  describe '#valid?' do
    subject { User.new(params) }

    context 'with valid attributes' do
      it { should be_valid }
    end

    context 'without name' do
      let(:name) { nil }
      it { should be_invalid }
    end

    context 'without email' do
      let(:email) { nil }
      it { should be_invalid }
    end

    context 'without password' do
      let(:password) { nil }
      it { should be_invalid }
    end
  end

  describe '#save!' do
    subject { User.new(params) }

    before(:each) do
      should be_valid
    end

    it 'saves a new user' do
      subject.save!
      should be_persisted
    end
  end
end
