require "rails"
module FeatureProof
  class Engine < Rails::Engine
    initializer "feature_proof.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end