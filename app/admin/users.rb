ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :latitude, :longitude, :address
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :latitude, :longitude, :address]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
permit_params :email, :password

index do
    column :id
    column :email
    column :crated_at
    column :email_provider do |user|
      user.email.split('@').last.capitalize
    end  
    column :member_since do |user|
      time_ago_in_words(user.created_at)
    end

    actions
end

form do |f|
  inputs 'Agregando nuevo usuario' do
    input :email
    input :password
  end
  actions
end

end