require 'rails_helper'

shared_examples 'a time record model' do
  let(:user) { User.new }

  describe '#valid?' do
    subject { described_class.new(params) }

    let(:params) {
      {
        user: user,
        start_at: start_at,
        end_at: end_at,
      }
    }
    let(:start_at) { Time.zone.now }
    let(:end_at) { start_at + 1.hour }

    context 'with valid attributes' do
      it { should be_valid }
    end

    context 'without a user' do
      let(:user) { nil }
      it { should be_invalid }
    end

    context 'without start_at' do
      let(:start_at) { nil }
      it { should be_invalid }
    end

    context 'with reversed time range' do
      let(:start_at) { Time.zone.now }
      let(:end_at) { start_at - 1.hour }
      it { should be_invalid }
    end
  end
end
