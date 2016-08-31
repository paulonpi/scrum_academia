class AddColumnCidadeUsuario < ActiveRecord::Migration
  def self.up
	add_column :usuarios, :cidade_id, :integer

  end

  def self.down
	remove_column :usuarios, :contato_id
  end

end
