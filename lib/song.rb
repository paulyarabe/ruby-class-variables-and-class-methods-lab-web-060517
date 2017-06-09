class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@artists << artist
		@@genres << genre
	end

	def name
		@name
	end

	def self.count
		@@count
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		@@genres.each_with_object({}) do |genre, gc_hash|
			if gc_hash.keys.include?(genre)
				gc_hash[genre] +=1
			else
				gc_hash[genre] = 1
			end
		end
	end

	def self.artist_count
		@@artists.each_with_object({}) do |artist, ac_hash|
			if ac_hash.keys.include?(artist)
				ac_hash[artist] +=1
			else
				ac_hash[artist] = 1
			end
		end
	end
end
