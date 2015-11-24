require 'rails_helper'

module Incarnator
  RSpec.describe Account, type: :model do
    it { is_expected.to have_many(:accounts_roles) }
    it { is_expected.to have_many(:roles) }

    it { is_expected.to validate_presence_of(:user_name) }
    it { is_expected.to validate_uniqueness_of(:user_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }

    describe "#has_role?" do
      subject { FactoryGirl.create(:account) }
      let(:role) { FactoryGirl.create(:incarnator_role) }

      it "returns true if account has role" do
        subject.roles << role

        expect(subject.has_role?(role.name)).to eq(true)
      end

      it "returns false unless account has role" do
        expect(subject.has_role?(role.name)).to eq(false)
      end
    end
  end
end
