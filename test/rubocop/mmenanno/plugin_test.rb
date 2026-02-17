# frozen_string_literal: true

require "test_helper"

module RuboCop
  module Mmenanno
    class PluginTest < Minitest::Test
      def setup
        @plugin = RuboCop::Mmenanno::Plugin.new
      end

      def test_plugin_is_lint_roller_plugin
        assert_kind_of(LintRoller::Plugin, @plugin)
      end

      def test_about_returns_correct_name
        assert_equal("rubocop-mmenanno", @plugin.about.name)
      end

      def test_about_returns_correct_version
        assert_equal(RuboCop::Mmenanno::VERSION, @plugin.about.version)
      end

      def test_rules_returns_config
        context = LintRoller::Context.new(engine: :rubocop)
        rules = @plugin.rules(context)

        assert_kind_of(LintRoller::Rules, rules)
        assert_equal(:object, rules.type)
      end
    end
  end
end
