require "test_helper"

module Workarea
  module Storefront
    class StyledSelectsSystemTest < Workarea::SystemTest
      def test_styled_select
        visit storefront.style_guides_path

        Capybara.match = :first

        within "#components" do
          click_on "styled-select"
        end

        assert_selector ".styled-select"

        within ".styled-select" do
          assert_selector "select"
        end
      end

      def test_styled_select_with_class_modifier
        visit storefront.style_guides_path

        Capybara.match = :first

        within "#components" do
          click_on "styled-select"
        end

        assert_selector ".styled-select--modified"

        within ".styled-select--modified" do
          assert_selector "select"
          refute_selector ".styled-select--modified"
        end
      end
    end
  end
end
