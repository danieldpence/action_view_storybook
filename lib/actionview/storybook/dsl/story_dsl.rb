# frozen_string_literal: true

module ActionView
  module Storybook
    module Dsl
      class StoryDsl
        def self.evaluate!(story_config, &block)
          new(story_config).instance_eval(&block)
        end

        def parameters(**params)
          @story_config.parameters = params
        end

        def controls(&block)
          controls_dsl = ControlsDsl.new(story_config.component)
          controls_dsl.instance_eval(&block)
          @story_config.controls = controls_dsl.controls
        end

        def layout(layout)
          @story_config.layout = layout
        end

        def content(&block)
          @story_config.content_block = block
        end

        private

        attr_reader :story_config

        def initialize(story_config)
          @story_config = story_config
        end
      end
    end
  end
end
