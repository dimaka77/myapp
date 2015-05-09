# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( fontawesome-webfont.eot )
Rails.application.config.assets.precompile += %w( fontawesome-webfont.woff )
Rails.application.config.assets.precompile += %w( fontawesome-webfont.ttf )
Rails.application.config.assets.precompile += %w( fontawesome-webfont.svg#fontawesomeregular )
Rails.application.config.assets.precompile += %w( icons-000000.png )
Rails.application.config.assets.precompile += %w( icons-ffffff.png )
Rails.application.config.assets.precompile += %w( icons-000000@2x.png )
Rails.application.config.assets.precompile += %w( icons-ffffff@2x.png )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
