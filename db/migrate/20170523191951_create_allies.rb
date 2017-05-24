class CreateAllies < ActiveRecord::Migration[5.0]
  def change
    create_table :allies do |t|
      t.string :title
      t.string :description
      t.string :t1
      t.string :t2
      t.string :t3
      t.string :t4
      t.string :t5
      t.string :f1
      t.string :f2
      t.string :f3
      t.string :f4
      t.string :f5
      t.string :f6
      t.string :c1
      t.string :c2
      t.string :c3
      t.string :c4
      t.string :c5

      t.timestamps
    end
  end
end
