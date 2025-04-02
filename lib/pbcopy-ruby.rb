# frozen_string_literal: true

require_relative "pbcopy-ruby/version"

# Provides a global function to copy text to the system clipboard
module PbcopyRuby
  class Error < StandardError; end

  # Copy the given text to the system clipboard using pbcopy
  #
  # @param text [String] the text to copy to clipboard
  # @return [String] the text that was copied
  def pbcopy(text)
    IO.popen("pbcopy", "w") { |io| io.write(text.to_s) }
    text
  end
end

# Extend Object to make pbcopy globally available
class Object
  include PbcopyRuby
end 