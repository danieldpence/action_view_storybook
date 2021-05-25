# frozen_string_literal: true

RSpec.describe ActionView::Storybook::Controls::ColorConfig do
  subject { described_class.new(param, value, name: name) }

  let(:type) { :color }

  it_behaves_like "a controls config"

  context "with :preset_color array" do
    subject { described_class.new(param, value, name: name, preset_colors: preset_colors) }

    let(:preset_colors) { %w[red green blue] }

    it_behaves_like "a controls config" do
      let(:csf_arg_type_control_overrides) { { presetColors: preset_colors } }
    end
  end
end
