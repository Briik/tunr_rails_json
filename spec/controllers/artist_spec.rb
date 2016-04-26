require 'rails_helper'

RSpec.describe ArtistsController, :type => :controller do
  describe "GET #index" do
    it 'loads all of the artists into @artists' do
      # Arrange
      artist1, artist2 = Artist.create!, Artist.create!
      # Act
      get :index
      # Assert
      expect(assigns(:artists)).to match_array[artist, artist2]
    end
  end
end
