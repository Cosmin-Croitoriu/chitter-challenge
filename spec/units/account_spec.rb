require 'account'

describe Account do
  describe '.create_account' do


    it "creates a new entry of an account in the database" do
      account = Account.create_account(first_name: 'Roxana', last_name: 'Pirvu', user_name: 'SaltyRox', email: 'roxxmoxx@gmail.com', password: 'roxurulez1234')
  
      expect(account).to be_a Account
      expect(account.first_name).to eq 'Roxana'
      expect(account.last_name).to eq 'Pirvu'
      #expect(account.user_name).to eq 'SaltyRox'
      expect(account.email).to eq 'roxxmoxx@gmail.com'
      expect(account.password).to eq 'roxurulez1234'
    end
  end
end
