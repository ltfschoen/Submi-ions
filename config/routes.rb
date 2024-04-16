# == Route Map
#
#                                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#                                    votes GET    /votes(.:format)                                                                                  votes#index
#                                          POST   /votes(.:format)                                                                                  votes#create
#                                 new_vote GET    /votes/new(.:format)                                                                              votes#new
#                                edit_vote GET    /votes/:id/edit(.:format)                                                                         votes#edit
#                                     vote GET    /votes/:id(.:format)                                                                              votes#show
#                                          PATCH  /votes/:id(.:format)                                                                              votes#update
#                                          PUT    /votes/:id(.:format)                                                                              votes#update
#                                          DELETE /votes/:id(.:format)                                                                              votes#destroy
#                               judgements GET    /judgements(.:format)                                                                             judgements#index
#                                          POST   /judgements(.:format)                                                                             judgements#create
#                            new_judgement GET    /judgements/new(.:format)                                                                         judgements#new
#                           edit_judgement GET    /judgements/:id/edit(.:format)                                                                    judgements#edit
#                                judgement GET    /judgements/:id(.:format)                                                                         judgements#show
#                                          PATCH  /judgements/:id(.:format)                                                                         judgements#update
#                                          PUT    /judgements/:id(.:format)                                                                         judgements#update
#                                          DELETE /judgements/:id(.:format)                                                                         judgements#destroy
#                                edit_user GET    /users/:id/edit(.:format)                                                                         users#edit
#                                     user PATCH  /users/:id(.:format)                                                                              users#update
#                                          PUT    /users/:id(.:format)                                                                              users#update
#                               admin_root GET    /admin(.:format)                                                                                  admin/admin#index
#              admin_user_ethereum_address POST   /admin/users/:user_id/ethereum_address(.:format)                                                  admin/ethereum_addresses#create
#      admin_user_destroy_ethereum_address DELETE /admin/users/:user_id/ethereum_address/:id(.:format)                                              admin/ethereum_addresses#destroy
#                              admin_users GET    /admin/users(.:format)                                                                            admin/users#index
#                                          POST   /admin/users(.:format)                                                                            admin/users#create
#                           new_admin_user GET    /admin/users/new(.:format)                                                                        admin/users#new
#                          edit_admin_user GET    /admin/users/:id/edit(.:format)                                                                   admin/users#edit
#                               admin_user GET    /admin/users/:id(.:format)                                                                        admin/users#show
#                                          PATCH  /admin/users/:id(.:format)                                                                        admin/users#update
#                                          PUT    /admin/users/:id(.:format)                                                                        admin/users#update
#                                          DELETE /admin/users/:id(.:format)                                                                        admin/users#destroy
#                        admin_submissions GET    /admin/submissions(.:format)                                                                      admin/submissions#index
#                                          POST   /admin/submissions(.:format)                                                                      admin/submissions#create
#                     new_admin_submission GET    /admin/submissions/new(.:format)                                                                  admin/submissions#new
#                    edit_admin_submission GET    /admin/submissions/:id/edit(.:format)                                                             admin/submissions#edit
#                         admin_submission GET    /admin/submissions/:id(.:format)                                                                  admin/submissions#show
#                                          PATCH  /admin/submissions/:id(.:format)                                                                  admin/submissions#update
#                                          PUT    /admin/submissions/:id(.:format)                                                                  admin/submissions#update
#                                          DELETE /admin/submissions/:id(.:format)                                                                  admin/submissions#destroy
#                      admin_judging_teams GET    /admin/judging_teams(.:format)                                                                    admin/judging_teams#index
#                                          POST   /admin/judging_teams(.:format)                                                                    admin/judging_teams#create
#                   new_admin_judging_team GET    /admin/judging_teams/new(.:format)                                                                admin/judging_teams#new
#                  edit_admin_judging_team GET    /admin/judging_teams/:id/edit(.:format)                                                           admin/judging_teams#edit
#                       admin_judging_team GET    /admin/judging_teams/:id(.:format)                                                                admin/judging_teams#show
#                                          PATCH  /admin/judging_teams/:id(.:format)                                                                admin/judging_teams#update
#                                          PUT    /admin/judging_teams/:id(.:format)                                                                admin/judging_teams#update
#                                          DELETE /admin/judging_teams/:id(.:format)                                                                admin/judging_teams#destroy
#                                  sign_in POST   /sign_in(.:format)                                                                                sessions#sign_in
#                                 sign_out DELETE /sign_out(.:format)                                                                               sessions#sign_out
#                              submissions GET    /submissions(.:format)                                                                            submissions#index
#                                          POST   /submissions(.:format)                                                                            submissions#create
#                           new_submission GET    /submissions/new(.:format)                                                                        submissions#new
#                          edit_submission GET    /submissions/:id/edit(.:format)                                                                   submissions#edit
#                               submission GET    /submissions/:id(.:format)                                                                        submissions#show
#                                          PATCH  /submissions/:id(.:format)                                                                        submissions#update
#                                          PUT    /submissions/:id(.:format)                                                                        submissions#update
#                                          DELETE /submissions/:id(.:format)                                                                        submissions#destroy
#                       rails_health_check GET    /up(.:format)                                                                                     rails/health#show
#                                     root GET    /                                                                                                 submissions#index
#         turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
#         turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
#        turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
#            rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
#               rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
#            rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
#      rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
#            rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
#             rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
#           rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
#                                          POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
#        new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
#            rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
# new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
#    rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
#    rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
# rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
#                       rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
#                 rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#                                          GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
#                rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
#          rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#                                          GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
#                       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
#                update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
#                     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :votes

  resources :judgements

  resources :users, only: %i[edit update]

  namespace :admin do
    root 'admin#index'

    resources :users do
      post 'ethereum_address' => 'ethereum_addresses#create'
      delete 'ethereum_address/:id' => 'ethereum_addresses#destroy', as: :destroy_ethereum_address
    end

    resources :submissions
    resources :judging_teams
  end

  post 'sign_in' => 'sessions#sign_in'
  delete 'sign_out' => 'sessions#sign_out'

  resources :submissions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'submissions#index'
end
