require "padrino/sextant/version"
require 'padrino/sextant/controller'

module Padrino
  module Sextant
    def self.registered(app)
      Controller.registered app
    end
  end
end
