module Grimorium

  class << self
    attr_writer :configuration
  end


  # Lazy reader
  def self.configuration
    @configuration ||= Configuration.new
  end


  # Configuration yielder
  def self.configure
    yield(self.configuration)
  end


  class Configuration
    # The subject of cucumber sentences
    attr_accessor :cucumber_sentence_subject


    def initialize
      @cucumber_sentence_subject = 'I'
    end
  end
end