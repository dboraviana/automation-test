require 'oci8'
require_relative 'database'

class Database

  def initialize
    @connection = OCI8.new('02279423103','02279423103', '//dboraclepoupexqa.poupex.com.br:1521/poupexqa')
  end

  def delete
    @connection.exec('DELETE FROM FAM_FAMILIA.TAB_PPS_SGD')
  end
end



#https://stackoverflow.com/questions/9892301/connecting-to-oracle-db-using-ruby
#https://www.rubydoc.info/gems/ruby-oci8/OCI8#initialize-instance_method