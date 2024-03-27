ActiveAdmin.register Category do
  permit_params :category_name, :parent_category_id, :created_at, :updated_at
  menu parent: "Product Management", label: 'Manage Categories'

  index do
    selectable_column
    id_column
    column :category_name
    column :parent_category do |resource|
      parent_category = resource.parent_category
      "#{parent_category.category_name}" if parent_category 
    end
    column :created_at
    column :updated_at
    actions
  end

  filter :category_name

  show do 
    attributes_table do
      row :category_name
      row :parent_category do |resource|
        parent_category = resource.parent_category
        "#{parent_category.category_name}" if parent_category 
      end
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :category_name
      f.input :parent_category_id, as: :select, include_blank: false, prompt: "Select parent category", collection: Category.all.map {|f| [f.category_name, f.id]}
    end
    f.actions
  end

end
