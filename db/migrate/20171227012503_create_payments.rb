class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :ref_id

      t.timestamps
    end
  end
end
