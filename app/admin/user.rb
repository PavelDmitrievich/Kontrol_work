ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
	selectable_column
	id_column
	column :name do |user|
		link_to user.name, admin_user_path(user)
	end
	column :email
	column :admin
	actions
end

show do 
	attributes_table do
		row :name
		row :email
	end
	active_admin_comments
end

end
