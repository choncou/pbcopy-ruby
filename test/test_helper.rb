$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "pbcopy-ruby"
require "minitest/autorun"

# Helper method to clear clipboard
def clear_clipboard
  system("echo -n '' | pbcopy")
end 