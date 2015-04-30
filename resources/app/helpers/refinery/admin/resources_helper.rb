module Refinery
  module Admin
    module ResourcesHelper
      # We show the title from the next available locale
      # if there is no title for the current locale
      def resource_title_with_translations(resource)
        resource.title.presence || resource.translations.detect { |t| t.title.present?}.title
      end
    end
  end
end