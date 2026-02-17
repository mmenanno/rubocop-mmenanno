# frozen_string_literal: true

require "test_helper"
require "rubocop"
require "yaml"

module RuboCop
  module Mmenanno
    class ConfigTest < Minitest::Test
      def setup
        @config_path = File.join(__dir__, "..", "..", "..", "config", "default.yml")
      end

      def test_config_file_exists
        assert_path_exists(@config_path)
      end

      def test_config_is_valid_yaml
        config = YAML.safe_load_file(@config_path)

        assert_kind_of(Hash, config)
      end

      def test_new_cops_enabled
        config = YAML.safe_load_file(@config_path)

        assert_equal("enable", config.dig("AllCops", "NewCops"))
      end

      def test_config_keys_are_valid_rubocop_departments
        config = YAML.safe_load_file(@config_path)

        config.each_key do |key|
          assert_match(/\A[A-Z]/, key, "Config key '#{key}' should start with uppercase department name")
        end
      end
    end
  end
end
