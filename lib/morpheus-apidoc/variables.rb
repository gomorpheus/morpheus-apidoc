module Morpheus
  module Apidoc
    
    ########################################
    # Morpheus API Documentation Settings
    # Override the settings below for white labeling
    ########################################
    module Variables

      # The name of the application
      def application_name; "Morpheus" end

      # The company name
      def company_name; "Morpheus Data" end

      # The company homepage (marketing site)
      def company_website; "https://www.morpheusdata.com" end

      # A domain to use in example email addresses, etc.
      def company_domain; "morpheusdata.com" end

      # The base url used to document each HTTP Request path
      # def api_url; "https://api.morpheusdata.com"
      def api_url; "$serverUrl" end

      # The URL value to use in the shell curl examples, just a variable name
      def curl_url; "$serverUrl" end

      # The API Token used in shell examples (curl), never a real valid token of course
      def curl_token; "$accessToken" end

      # The logo in the header
      def logo_path; "logo-white.svg" end

      # The logo in the header when printing
      def print_logo_path; "logo.svg" end

      # The logo in the footer
      def footer_logo_path; "logo_footer.svg" end

      # The favicon
      def favicon_path; "favicon.png" end

      # The Morpheus Hub URL (not really whitelabel ready this point, do not include setup doc)
      def hub_url; "https://morpheushub.com" end

    end
  end
end

