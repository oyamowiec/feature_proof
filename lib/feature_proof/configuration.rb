module FeatureProof
  class Configuration
    attr_accessor :model, :field, :text_to_display

    def initialize
      @model = nil
      @field = nil
      @text_to_display = nil
    end
  end
end