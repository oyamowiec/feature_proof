require 'rails/generators'

module FeatureProof
  module Generators
    class ViewsGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../..", __FILE__)
      def copy_views
        directory 'app/', 'app/'
      end

    end
  end
end