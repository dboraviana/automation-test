require 'mysql'

class DatabaseMysql

  def initialize
    @connection = Mysql.new '127.0.0.1','root','','glpi'
  end

  def database_version
    puts "Versão do Banco: "
    puts @connection.get_server_info()
  end

  def listar_databases
    puts "\nLista de todos os bancos neste servidor: "
    @connection.list_dbs.each do |db|
      puts db
    end

  end

  def listar_registros
    @rs = @connection.query("select * from glpi_users")
    @n_rows = @rs.num_rows
    puts "Aqui temos #{@n_rows} registros nesta tabela."
    @n_rows.times do
      puts @rs.fetch_row().join("\s")
    end
  end

  def select
    cursor = @connection.query('select * from glpi_users')
    puts '#### Imprimindo registros da Tabela ####'
    while r = cursor.fetch()
      puts r.join(' , ')
    end
    puts '#### Finalizando impressão de registros de usuarios ####'
    cursor.num_fields
  end

  def delete
    @connection.exec('DELETE FROM FAM_FAMILIA.TAB_PPS')
  end
end



#https://stackoverflow.com/questions/9892301/connecting-to-oracle-db-using-ruby
#https://www.rubydoc.info/gems/ruby-oci8/OCI8#initialize-instance_method