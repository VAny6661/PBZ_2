ActiveAdmin.register Document, as: "Custom" do
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
    column 'Date' do
      DateTime.current.to_date
    end
    column :name
    column :release_date
    column :completion_date
    column :responsible do |man|
      employee = Responsible.exists?(man.responsible_id) ? Responsible.find(man.responsible_id) : nil
      employee ? employee.name : "Fired"
    end
    column "Subdivision", :responsible do |man|
      employee = Responsible.exists?(man.responsible_id) ? Responsible.find(man.responsible_id) : nil
      employee.subdevision if employee
    end
    column "Chair", :responsible do |man|
      employee = Responsible.exists?(man.responsible_id) ? Responsible.find(man.responsible_id) : nil
      employee.chair if employee
    end

  end
end
