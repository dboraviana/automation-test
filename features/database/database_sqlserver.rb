require 'sequel'
require 'tiny_tds'

class SqlConnection

  db_connection_params = {
      :adapter => 'tinytds',
      :host => 'dbsqldesenv01.poupex.com.br',
      :port => '1109',
      :database => 'dados gerais',
      :user => 'User_avaliadores',
      :password => 'ab9A4VGZW6onEJhCVsL7'
  }

  DB = Sequel.connect(db_connection_params)

  def select(sql)
    puts DB.fetch(sql).all
  end

  def exec(sql)
    DB.run "#{sql}"
    DB.disconnect
  end

end

# Para a instalação correta da dependência "tiny_tds" deve ser executado o seguinte comando: gem install --platform ruby tiny_tds
