module Gko
  module Spectacles
    #require 'gko_core'
    #require 'gko_images'
    require 'gko/spectacles/engine'
    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end
    end
  end
end

