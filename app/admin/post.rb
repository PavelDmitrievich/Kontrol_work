ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :body, :rating, :user_id, :image_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
	f.inputs do
		f.input :image
		f.input :body
		f.hidden_field :user_id, value: current_user.id
		f.input :rating
	end
	f.actions
end

index do
	selectable_column
	id_column
	column :user_name do |post|
		link_to post.user.name, admin_user_path(post.user)
	end
	column :body

	actions
end

show do 
	attributes_table do
		row :body
		row :rating
	end
	active_admin_comments
end
end
