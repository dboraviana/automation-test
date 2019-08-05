require 'pg'

class DatabasePostgres

  def conectar_postgres
    PG::Connection.new '127.0.0.1', 5432, nil, nil, 'test_cucumber', 'postgres', '12345678'
  end

  def database_version
    begin

      connection = self.conectar_postgres
      puts "Versão do Banco POSTGRES: "
      puts connection.server_version
    rescue PG::Error => e

      puts e.message
    ensure

      connection.close if connection
    end
  end

  def listar_registros
    begin
      connection = self.conectar_postgres
      rs = connection.exec("select * from contato")
      n_rows = rs.ntuples
      puts "Aqui temos #{n_rows} registros nesta tabela do POSTGRES."
      rs.each_row() do |row|
        puts row.join("\s")
      end
    rescue PG::Error => e

      puts e.message
    ensure

      connection.close if connection
    end
  end

  def select
    begin
      connection = self.conectar_postgres
      cursor = connection.exec('select * from contato')
      puts '#### Imprimindo registros da Tabela ####'
      while r = cursor.each()
        puts r.join(' , ')
      end
      puts '#### Finalizando impressão de registros de usuarios ####'
      cursor.num_fields
    rescue PG::Error => e

      puts e.message
    ensure

      connection.close if connection
    end
  end

  def delete
    begin
      connection = self.conectar_postgres
      connection.exec('DELETE FROM FAM_FAMILIA.TAB_PPS')
    rescue PG::Error => e

      puts e.message
    ensure

      connection.close if connection
    end
  end
end



#https://stackoverflow.com/questions/9892301/connecting-to-oracle-db-using-ruby
#https://www.rubydoc.info/gems/ruby-oci8/OCI8#initialize-instance_method