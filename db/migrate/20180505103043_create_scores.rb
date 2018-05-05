class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.references :user, index: true, foreign_key: true
      t.references :professor, index: true, foreign_key: true

      t.integer :attend
      t.integer :sleep
      t.integer :lect_sys
      t.integer :hw_fre
      t.integer :hw_lvl
      t.integer :qz_fre
      t.integer :qz_lvl
      t.integer :tst_lvl
      t.integer :tst_jjok
      t.text    :comment
      
      t.timestamps null: false
    end
  end
end
