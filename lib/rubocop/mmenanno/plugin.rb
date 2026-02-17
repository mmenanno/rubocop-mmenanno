# frozen_string_literal: true

require "lint_roller"

module RuboCop
  module Mmenanno
    class Plugin < LintRoller::Plugin
      def about
        LintRoller::About.new(
          name: "rubocop-mmenanno",
          version: VERSION,
          homepage: "https://github.com/mmenanno/rubocop-mmenanno",
          description: "Personal RuboCop configuration for mmenanno projects.",
        )
      end

      def supported?(context)
        context.engine == :rubocop
      end

      def rules(_context)
        LintRoller::Rules.new(
          type: :object,
          config_format: :rubocop,
          value: YAML.safe_load_file(config_path),
        )
      end

      private

      def config_path
        File.join(__dir__, "..", "..", "..", "config", "default.yml")
      end
    end
  end
end
