RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.authorize_with do
    authenticate_or_request_with_http_basic('Site Message') do |username, password|
      username == 'foo@gmail.com' && password == 'bar'
    end
  end

  ADMIN_EMAILS= ['oo@gmail.com']


  # rest of configuration


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
  end

  config.model Blog do
    edit do
      # For RailsAdmin >= 0.5.0
      field :title
      field :body, :wysihtml5

      # For RailsAdmin < 0.5.0
      # field :description do
      #   bootstrap_wysihtml5 true
      # end
    end
  end


  # To configure the editor bar pass a hash of options:
  # For RailsAdmin >= 0.5.0
  # field :description, :wysihtml5 do
  #   config_options :html => true
  # end


end

