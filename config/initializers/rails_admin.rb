RailsAdmin.config do |config|
  config.asset_source = :sprockets

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  # == CancanCan ==
  config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    config.model 'News' do
      edit do
        field :news_date
        field :news_name
        field :news_description
        field :news_link
        field :news_image, :active_storage
      end
  
      show do
        field :news_date
        field :news_name
        field :news_description
        field :news_link
        field :news_image do
          pretty_value do
            if bindings[:object].news_image.attached?
              bindings[:view].tag(:img, src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].news_image, only_path: true), style: 'max-width: 200px; max-height: 200px;')
            end
          end
        end
      end
  
      list do
        field :news_date
        field :news_name
        field :news_description
        field :news_link
        field :news_image do
          pretty_value do
            if bindings[:object].news_image.attached?
              bindings[:view].tag(:img, src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].news_image, only_path: true), style: 'max-width: 100px; max-height: 100px;')
            end
          end
        end
      end
    end

    config.model 'ProjectDetail' do
      edit do
        field :project
        field :description, :action_text
        field :image, :active_storage
      end
    
      show do
        field :project
        field :description do
          pretty_value do
            bindings[:object].description&.body&.to_s&.html_safe
          end
        end
        field :image do
          pretty_value do
            if bindings[:object].image.attached?
              bindings[:view].tag(:img, 
                src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].image, only_path: true), 
                style: 'max-width: 200px; max-height: 200px;'
              )
            end
          end
        end
      end
    
      list do
        field :project
        field :description do
          pretty_value do
            ActionController::Base.helpers.strip_tags(bindings[:object].description.to_s).truncate(100)
          end
        end
        field :image do
          pretty_value do
            if bindings[:object].image.attached?
              bindings[:view].tag(:img, 
                src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].image, only_path: true), 
                style: 'max-width: 100px; max-height: 100px;'
              )
            end
          end
        end
      end
    end 
    
  config.model 'Video' do
  edit do
    field :name
    field :video, :active_storage
    field :youtube_url
  end

  show do
    field :name
    field :video do
      pretty_value do
        if bindings[:object].video.attached?
          bindings[:view].tag.video(
            controls: true,
            width: '320',
            height: '240',
            src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].video, only_path: true)
          )
        else
          "No video attached"
        end
      end
    end
    field :youtube_url
  end

  list do
    field :name
    field :video do
      pretty_value do
        if bindings[:object].video.attached?
          bindings[:view].tag.video(
            controls: true,
            width: '160',
            height: '120',
            src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].video, only_path: true)
          )
        else
          "No video"
        end
      end
    end
    field :youtube_url
  end
end


    config.model 'Press' do
      edit do
        field :name
        field :date
        field :link
        field :image, :active_storage
      end
  
      show do
        field :name
        field :date
        field :link
        field :image do
          pretty_value do
            if bindings[:object].image.attached?
              bindings[:view].tag(:img, src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].image, only_path: true), style: 'max-width: 200px; max-height: 200px;')
            end
          end
        end
      end
  
      list do
        field :name
        field :date
        field :link
        field :image do
          pretty_value do
            if bindings[:object].image.attached?
              bindings[:view].tag(:img, src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].image, only_path: true), style: 'max-width: 100px; max-height: 100px;')
            end
          end
        end
      end
    end

    config.model 'Music' do
      edit do
        field :name
        field :date
        field :description, :action_text
        field :link
        field :image, :active_storage
      end
    
      show do
        field :name
        field :date
        field :description do
          pretty_value do
            bindings[:object].description&.body&.to_s&.html_safe
          end
        end
        field :link
        field :image do
          pretty_value do
            if bindings[:object].image.attached?
              bindings[:view].tag(:img, 
                src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].image, only_path: true), 
                style: 'max-width: 200px; max-height: 200px;'
              )
            end
          end
        end
        field :created_at
        field :updated_at
      end
    
      list do
        field :name
        field :date
        field :description do
          pretty_value do
            ActionController::Base.helpers.strip_tags(bindings[:object].description.to_s).truncate(100)
          end
        end
        field :link
        field :image do
          pretty_value do
            if bindings[:object].image.attached?
              bindings[:view].tag(:img, 
                src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].image, only_path: true), 
                style: 'max-width: 100px; max-height: 100px;'
              )
            end
          end
        end
        field :created_at
        field :updated_at
      end
    end


    
    config.model 'Audio' do
      edit do
        field :title
        field :music do
          associated_collection_scope do
            Proc.new { |scope| scope.all }
          end
        end
        field :audio, :active_storage
      end
    
      show do
        field :title
        field :music
        field :audio do
          pretty_value do
            if bindings[:object].audio.attached?
              bindings[:view].tag(:audio, 
                controls: true, 
                src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].audio, only_path: true)
              )
            else
              "No audio file attached"
            end
          end
        end
        field :created_at
        field :updated_at
      end
    
      list do
        field :title
        field :music
        field :audio do
          pretty_value do
            if bindings[:object].audio.attached?
              bindings[:view].tag(:audio, 
                controls: true, 
                src: Rails.application.routes.url_helpers.rails_blob_path(bindings[:object].audio, only_path: true),
                style: 'width: 100px;'
              )
            else
              "No audio file"
            end
          end
        end
        field :created_at
        field :updated_at
      end
    end
    

    
    
  end
end
