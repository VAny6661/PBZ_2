ActiveAdmin.register Document, as: "Custom2" do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    column 'Current Date' do
      DateTime.current.to_date
    end
    column :name
    column :doc_type
    column 'organisation' do
      'Sun'
    end
    column :release_date
    column :done
  end
end
