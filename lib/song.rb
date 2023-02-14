class Song
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end