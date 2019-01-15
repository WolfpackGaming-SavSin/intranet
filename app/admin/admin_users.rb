ActiveAdmin.register AdminUser do
  permit_params :first_name, :last_name, :status, :role, :email, :password, :password_confirmation, :client_id

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :current_sign_in_at
    column :created_at
    column :status
    column :role
    actions
  end

  filter :first_name
  filter :last_name
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :role
  filter :status

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :status
      f.input :role
      para "Leave blank for Security Employees"
      f.input :client_id, :as => :select, :collection => Client.all
      # f.input :password
      # f.input :password_confirmation
    end
    f.actions
  end

end
