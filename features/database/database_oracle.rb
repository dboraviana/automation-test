require 'oci8'

class DatabaseOracle

  def initialize
    @connection = OCI8.new('02279423103','02279423103', '//dboraclepoupexqa.poupex.com.br:1521/poupexqa')
  end

  def select
    cursor = @connection.exec('SELECT * FROM FAM_FAMILIA.TAB_PPS')
    puts '#### Imprimindo registros da Tabela ####'
    while r = cursor.fetch()
      puts r.join(' , ')
    end
    puts '#### Finalizando impressão de registros ####'
    cursor.close
    @connection.logoff
  end

  def delete
    @connection.exec('DELETE FROM FAM_FAMILIA.TAB_PPS')
    @connection.logoff
  end
end



#https://stackoverflow.com/questions/9892301/connecting-to-oracle-db-using-ruby
#https://www.rubydoc.info/gems/ruby-oci8/OCI8#initialize-instance_method