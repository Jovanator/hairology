require "cancan/matchers"

describe "User" do
  describe "abilities" do
    subject { ability }
    let(:ability){ Ability.new(user) }
    let(:user){ nil }

    context "when is administrator" do
      let(:user) { Factory(:administrator) }

      it{ should be_able_to(:manage, Account.new) }
    end
  end
end
