require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MtgRail
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # `button_to` view helper will render `<button>` element, regardless of whether
    # or not the content is passed as the first argument or as a block.
    Rails.application.config.action_view.button_to_generates_button_tag = true

    # `stylesheet_link_tag` view helper will not render the media attribute by default.
    Rails.application.config.action_view.apply_stylesheet_media_default = false

    # Change the digest class for the key generators to `OpenSSL::Digest::SHA256`.
    # Rails.application.config.active_support.key_generator_hash_digest_class = OpenSSL::Digest::SHA256
    # Rails.application.config.active_support.hash_digest_class = OpenSSL::Digest::SHA256

    # Don't override ActiveSupport::TimeWithZone.name and use the default Ruby implementation.
    Rails.application.config.active_support.remove_deprecated_time_with_zone_name = true

    Rails.application.config.active_support.cache_format_version = 7.0

    # If you use a fiber based server or job processor, you should set it to `:fiber`.
    # Otherwise the default of `:thread` if preferable.
    Rails.application.config.active_support.isolation_level = :thread

    # Set both the `:open_timeout` and `:read_timeout` values for `:smtp` delivery method.
    Rails.application.config.action_mailer.smtp_timeout = 5

    # The ActiveStorage video previewer will now use scene change detection to generate
    # better preview images (rather than the previous default of using the first frame
    # of the video).
    Rails.application.config.active_storage.video_preview_arguments = "-vf 'select=eq(n\\,0)+eq(key\\,1)+gt(scene\\,0.015),loop=loop=-1:size=2,trim=start_frame=1' -frames:v 1 -f image2"

    # Automatically infer `inverse_of` for associations with a scope.
    # Rails.application.config.active_record.automatic_scope_inversing = true

    # Raise when running tests if fixtures contained foreign key violations
    Rails.application.config.active_record.verify_foreign_keys_for_fixtures = true

    # Disable partial inserts.
    # This default means that all columns will be referenced in INSERT queries
    # regardless of whether they have a default or not.
    Rails.application.config.active_record.partial_inserts = false

    # Protect from open redirect attacks in `redirect_back_or_to` and `redirect_to`.
    Rails.application.config.action_controller.raise_on_open_redirects = true

    # Change the variant processor for Active Storage.
    # Changing this default means updating all places in your code that
    # generate variants to use image processing macros and ruby-vips
    # operations. See the upgrading guide for detail on the changes required.
    # The `:mini_magick` option is not deprecated; it's fine to keep using it.
    # Rails.application.config.active_storage.variant_processor = :vips

    # If you're upgrading and haven't set `cookies_serializer` previously, your cookie serializer
    # was `:marshal`. Convert all cookies to JSON, using the `:hybrid` formatter.
    #
    # If you're confident all your cookies are JSON formatted, you can switch to the `:json` formatter.
    #
    # Continue to use `:marshal` for backward-compatibility with old cookies.
    #
    # If you have configured the serializer elsewhere, you can remove this.
    #
    # See https://guides.rubyonrails.org/action_controller_overview.html#cookies for more information.
    # Rails.application.config.action_dispatch.cookies_serializer = :hybrid
    
    # Enable parameter wrapping for JSON.
    # Previously this was set in an initializer. It's fine to keep using that initializer if you've customized it.
    # To disable parameter wrapping entirely, set this config to `false`.
    Rails.application.config.action_controller.wrap_parameters_by_default = true
    
    # Specifies whether generated namespaced UUIDs follow the RFC 4122 standard for namespace IDs provided as a
    # `String` to `Digest::UUID.uuid_v3` or `Digest::UUID.uuid_v5` method calls.
    #
    # See https://guides.rubyonrails.org/configuring.html#config-active-support-use-rfc4122-namespaced-uuids for
    # more information.
    # Rails.application.config.active_support.use_rfc4122_namespaced_uuids = true
    
    # Change the default headers to disable browsers' flawed legacy XSS protection.
    Rails.application.config.action_dispatch.default_headers = {
      "X-Frame-Options" => "SAMEORIGIN",
      "X-XSS-Protection" => "0",
      "X-Content-Type-Options" => "nosniff",
      "X-Download-Options" => "noopen",
      "X-Permitted-Cross-Domain-Policies" => "none",
      "Referrer-Policy" => "strict-origin-when-cross-origin"
    }
  end
end
