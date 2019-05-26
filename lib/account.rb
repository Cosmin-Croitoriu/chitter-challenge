require 'pg'

class Account
  attr_accessor :id, :first_name, :last_name, :user_name, :email, :password

  def initialize(id:, first_name:, last_name:, user_name:, email:, password:)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @password = password
  end

  def self.create_account(first_name:, last_name:, user_name:, email:, password:)
    if ENV['ENVIRONMENT'] == 'test'
      db = PG.connect(dbname: 'chitter_test')
    else
      db = PG.connect(dbname: 'chitter')
    end
    result = db.exec_params("INSERT INTO accounts (first_name, last_name, user_name, email, password) 
      Values ('#{first_name}', '#{last_name}', '#{user_name}', '#{email}', '#{password}') 
      RETURNING id, first_name, last_name, user_name, email, password")
    Account.new(id: result[0]['id'], first_name: result[0]['first_name'], last_name: result[0]['last_name'], user_name: result[0]['user_name'], email: result[0]['email'], password: result[0]['password'])        
  end

end
