ActiveAdmin.register Category do
permit_params :name, :slug, :description, :parent_id

  index do
    selectable_column
    id_column
    column :name
    column :slug
    column :description
    column :parent
    actions
  end

  filter :name
  filter :parent

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :parent, :as => :select, :collection => Category.all
    end
    f.actions
  end

end
