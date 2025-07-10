# config/initializers/sanitizers.rb
Rails::Html::WhiteListSanitizer.allowed_tags += ['iframe']
Rails::Html::WhiteListSanitizer.allowed_attributes += ['src', 'width', 'height', 'frameborder', 'allow', 'allowfullscreen', 'loading', 'style']
