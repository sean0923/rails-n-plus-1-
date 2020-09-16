class CreateUnitTask < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :u_name
      t.belongs_to :building, null: false, foreign_key: true

      t.timestamps
    end

    create_table :tasks do |t|
      t.string :t_name
      t.belongs_to :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
