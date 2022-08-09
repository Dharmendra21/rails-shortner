# frozen_string_literal: true

class ChangeShortUrlToShortCodeOnUrls < ActiveRecord::Migration[6.1]
  def change
    remove_column :urls, :short_url, :string
    add_column :urls, :short_code, :string
  end
end
