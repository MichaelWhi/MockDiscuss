class CreateMocks < ActiveRecord::Migration
  def change
    create_table :mocks do |t|
      t.string :name
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
