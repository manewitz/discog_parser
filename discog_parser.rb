require "rubygems"
require "nokogiri"
require "open-uri"

class Release
  attr_accessor(:title, :year, :label)
  
  def initialize(title, year, label)
    @title = title
    @year  = year
    @label = label
  end
end

releases = Array.new

puts "Mike's Awesome XML-Parsing Music App"

puts "Enter an artist:"

artist = gets.chomp
artist = URI.escape(artist)

puts "One moment..."

url = "http://www.discogs.com/artist/#{artist}?f=xml&api_key=44b62f4e8c"
headers = {'Accept-Encoding' => 'gzip', 'User-Agent' => "Mike's Awesome XML Parser"}

Nokogiri::XML(open(url, headers)).css('release').each do |release|
  release = Release.new(release.css('title').text, release.css('year').text, release.css('label').text)
  releases.push release
end

puts "Listing releases for #{artist.capitalize}"

for release in releases  
    puts   "Title:    " + release.title
    puts   "Released: " + release.year
    puts   "Label:    " + release.label
    puts
end