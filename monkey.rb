class Song
    attr_accessor :title
end
 
class Artist < Song
    attr_accessor :artist

    def about_song
        return "#{@title} is a song by #{@artist}."
    end
end
 
class Band < Song

    @@total_bands = 0

    def initialize
        @@total_bands += 1
    end

    def self.current_count
        puts "There are currently #{@@total_bands} bands in this list."
    end

	attr_accessor :band_name, :band_members

    def about_band
        return "#{@title} is a song by #{@band_name}. The band's lineup consists of #{@band_members}.\n\n"
    end
end
  
my_song = Band.new
my_song.title = 'Radioactive'
my_song.band_name = 'Imagine Dragons'
my_song.band_members = "Dan Reynolds, Wayne Sermon, Ben McKee, and Daniel Platzman"

puts my_song.about_band

my_song2 = Band.new
my_song2.title = 'Viva La Vida'
my_song2.band_name = 'Coldplay'
my_song2.band_members = "Chris Martin, Jonny Buckland, Guy Berryman, Will Champion"

puts my_song2.about_band

Band.current_count