shared_context "current user signed in" do
  let(:current_user) { build(:user, email: "rinat@mail.ru", password: "12345678") }

  background do
    login_as current_user
  end
end
