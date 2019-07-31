require 'mysql'

class DatabaseMysql

  #def initialize
  #  @connection = Mysql.new '127.0.0.1','root','','glpi'
  #end

  def conectar_mysql
    Mysql.new '127.0.0.1','root','','glpi'
  end

  def database_version
    begin
      connection = self.conectar_mysql
      puts "Versão do Banco MySQL: "
      puts connection.get_server_info()
    rescue Mysql::Error => e

      puts e.message
    ensure

      connection.close if connection
    end

  end

  def listar_databases
    begin
      connection = self.conectar_mysql
      puts "\nLista de todos os bancos neste servidor: "
      connection.list_dbs.each do |db|
        puts db
      end
    rescue Mysql::Error => e

      puts e.message
    ensure

      connection.close if connection
    end
  end

  def listar_registros
    begin
      connection = self.conectar_mysql
      rs = connection.query("select * from glpi_users")
      n_rows = rs.num_rows
      puts "Aqui temos #{@n_rows} registros nesta tabela."
      n_rows.times do
        puts rs.fetch_row().join("\s")
      end
    rescue Mysql::Error => e

      puts e.message
    ensure

      connection.close if connection
    end
  end

  def select
    begin
      connection = self.conectar_mysql
      cursor = connection.query('select * from glpi_users')
      puts '#### Imprimindo registros da Tabela ####'
      while r = cursor.fetch()
        puts r.join(' , ')
      end
      puts '#### Finalizando impressão de registros de usuarios ####'
      cursor.num_fields
    rescue Mysql::Error => e

      puts e.message
    ensure

      connection.close if connection
    end
  end

  def delete
    begin
      connection = self.conectar_mysql
      connection.exec('DELETE FROM FAM_FAMILIA.TAB_PPS')
    rescue Mysql::Error => e

      puts e.message
    ensure

      connection.close if connection
    end
  end
end



#https://stackoverflow.com/questions/9892301/connecting-to-oracle-db-using-ruby
#https://www.rubydoc.info/gems/ruby-oci8/OCI8#initialize-instance_method