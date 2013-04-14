class AddPicToMock < ActiveRecord::Migration
  def change
    add_column :mocks, :pic, :string
  end
end
