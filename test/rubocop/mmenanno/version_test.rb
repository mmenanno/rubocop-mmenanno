# frozen_string_literal: true

require "test_helper"

module RuboCop
  module Mmenanno
    class VersionTest < Minitest::Test
      def test_version_is_set
        refute_nil(RuboCop::Mmenanno::VERSION)
      end

      def test_version_matches_file
        expected = File.read(File.join(__dir__, "..", "..", "..", "VERSION")).strip

        assert_equal(expected, RuboCop::Mmenanno::VERSION)
      end

      def test_version_is_valid_semver
        assert_match(/\A\d+\.\d+\.\d+\z/, RuboCop::Mmenanno::VERSION)
      end
    end
  end
end
