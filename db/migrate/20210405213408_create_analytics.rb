# frozen_string_literal: true

class CreateAnalytics < ActiveRecord::Migration[6.1]
  def change
    create_table :analytics do |t|
      t.string :ip
      t.string :click_count
      t.datetime :last_visit
      t.references :url, null: false, foreign_key: true

      t.timestamps
    end
  end
end
