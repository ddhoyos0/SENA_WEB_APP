require 'pg'
module ActiveRecord
  class Client
    def connection
      @connection ||=PG.connect(dbname:'prueba',
        host:'localhost',
        port:'5432',
        user:'deymer',    
        password: 'deymer1990')
    end

    def execute_query(query)
      connection.exec(query).values
    end
  end  
end