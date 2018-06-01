class CreateMorningForms < ActiveRecord::Migration[5.2]
  def change
    create_table :morning_forms do |t|
      t.text :answer1
      t.text :answer2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
