class CreateReimbursements < ActiveRecord::Migration
  def change
    create_table :reimbursements do |t|
      t.string :reference
      t.references :payee
      t.text :comments
      t.text :data

      t.timestamps
    end
    add_index :reimbursements, :payee_id
  end
end
