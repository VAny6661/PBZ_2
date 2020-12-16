ActiveAdmin.register Responsible do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :subdevision, :chair, :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :subdevision
      f.input :chair
      f.input :name
      f.actions
    end
  end

  show do
    attributes_table do
      row :subdevision
      row :chair
      row :name
      active_admin_comments
    end
  end
end
