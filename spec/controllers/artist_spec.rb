require 'rails_helper'

RSpec.describe ArtistsController, :type => :controller do
  describe "GET #index" do
    it 'saves artists as instance variables' do
      # Arrange
      artist = create(:artist)
      artist2 = create(:artist2)
      # Act
      get :index
      # Assert
      assigns(:artists).should eq [artist, artist2]
    end
  end
end
