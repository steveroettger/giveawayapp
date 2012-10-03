class AddVideoUrlToContestants < ActiveRecord::Migration
  def change
    add_column :contestants, :video_url, :string, after: :email
  end
end
