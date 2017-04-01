ActiveAdmin.register Image do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :image, :user_id
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
		f.input :name
		f.hidden_field :user_id, value: current_user.id
		f.input :image, :as => :file
	end
	f.actions
end	

index do
	selectable_column
	id_column
	column :image do |image|
		image_tag image.image.url(:table_version)
	end
	column :autor do |image|
		link_to image.user.name, admin_user_path(image.user)
	end
	column :name do |image|
		link_to image.name, admin_image_path(image)
	end
	column :rating do |image|
		image.average_score
	end
	actions
end


show do 
	attributes_table do
		row :image do |image|
			image_tag image.image.url(:index_version)
		end
		row :rating do |image|
			image.average_score
		end
	end
	active_admin_comments
end


end
