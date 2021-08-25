ActiveAdmin.register Article do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :foto, :judul, :konten

  index do
    selectable_column
    id_column
    column :judul
    column :konten
    actions
  end

  form do |f|
    f.inputs 'Article' do
      f.input :foto, as: :file
      f.input :judul
      f.input :konten, as: :froala_editor
      # f.input :deskripsi_barang, as: :quill_editor
    end
    f.actions
  end

   show do
   attributes_table do
      # row :files do |av|
      #   image_tag av.files, width: "50%" if av.files.attached?
      # end

      row :foto do |ad|
        image_tag ad.foto, width: "50%"
      end
      row :judul
      row :konten
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:foto, :judul, :konten]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
