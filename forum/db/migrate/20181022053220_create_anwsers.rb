class CreateAnwsers < ActiveRecord::Migration[5.2]
  def change
    create_table :anwsers do |t|
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
