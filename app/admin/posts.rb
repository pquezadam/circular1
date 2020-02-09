ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :title
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :user_id, :title, :content
  index do
    column :id
    column :author do |post|
      post.user.email
    end
    column :title
    column :comments do |post|
      post.comments.count
    end
    actions
  end

  form do |f|
    inputs 'Nuevo Post' do
      f.input :user_id,
              label: 'Author',
              as: :select,
              collection: User.pluck(:email, :id)
      input :title
      #input :content
    end
    actions
  end

  filter :created_at

end
