class AddOccupationToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :occupation, :string, default: "good boy"
  end
end
