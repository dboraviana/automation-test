require 'oci8'

class DatabaseOracle

  #def initialize
  #  @connection = OCI8.new('02279423103','02279423103', '//dboraclepoupexqa.poupex.com.br:1521/poupexqa')
  #end

  def conectar_oracle
    OCI8.new('02279423103','02279423103', '//dboraclepoupexqa.poupex.com.br:1521/poupexqa')
  end

  def select
    begin
      connection = self.conectar_oracle
      cursor = connection.exec('SELECT * FROM FAM_FAMILIA.TAB_PPS')
      puts '#### Imprimindo registros da Tabela ORACLE####'
      while r = cursor.fetch()
        puts r.join(' , ')
      end
      puts '#### Finalizando impressão de registros do ORACLE####'

    rescue OCI8::Exception => e

      puts e.message
    ensure

      cursor.close if cursor
      connection.logoff if connection
    end
  end

  def delete
    begin
      connection = self.conectar_oracle
      connection.exec('DELETE FROM FAM_FAMILIA.TAB_PPS')

    rescue OCI8::Error => e

      puts e.message
    ensure

      connection.logoff if connection
    end
  end
end



#https://stackoverflow.com/questions/9892301/connecting-to-oracle-db-using-ruby
#https://www.rubydoc.info/gems/ruby-oci8/OCI8#initialize-instance_method