
require 'parslet'

require 'poparser/constants'
require 'poparser/parser'
require 'poparser/transformer'
require 'poparser/tokenizer'
require 'poparser/entry'
require 'poparser/po'
require 'poparser/version'

module PoParser
  class << self
    def parse(path)
      Tokenizer.new.extract_entries(path)
    end
  end
end
