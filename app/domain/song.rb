# frozen_string_literal: true

class Song
  attr_accessor :artist, :title, :api_url

  def initialize(artist, title, api_url = 'https://api.lyrics.ovh/v1')
    @api_url = api_url
    @artist = artist
    @title = title
  end

  def lyrics
    @artist.gsub!(' ', '%20')
    @title.gsub!(' ', '%20')
    response = RestClient.get "#{api_url}/#{@artist}/#{@title}"
  end
end
