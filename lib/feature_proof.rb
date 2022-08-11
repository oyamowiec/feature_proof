require "feature_proof/configuration"
require "feature_proof/railtie"
require "feature_proof/version"
require "feature_proof/view_helpers"
require 'rails'

module FeatureProof
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  class Proof < Configuration
    attr_accessor :f_model, :f_field, :f_text_to_display, :f_records

    def initialize(t_model, t_field, t_text)
      @f_model = t_model
      @f_field = t_field
      @f_text_to_display = t_text
      @f_records = (@f_model.camelize.constantize).order(id: :desc).limit(5).reverse
    end
  end
end

