class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :season , :string
  end
end
