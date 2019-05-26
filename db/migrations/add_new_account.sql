db.exec_params("INSERT INTO accounts (first_name, last_name, user_name, email, password) 
      Values ('#{first_name}', '#{last_name}', '#{user_name}', '#{email}', '#{password}') 