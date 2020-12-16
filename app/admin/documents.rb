ActiveAdmin.register Document do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :number, :doc_type, :completion_date, :responsible_id, :release_date,
                :done, :signatory_id
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
      f.input :name
      f.input :number
      f.input :doc_type
      f.input :completion_date
      f.input :responsible_id
      f.input :release_dateA
      f.input :done
      f.input :signatory_id

      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :number
      row :doc_type
      row :completion_date
      row :responsible_id
      row :release_date
      row :done
      row :signatory_id
      active_admin_comments
    end
  end
end
