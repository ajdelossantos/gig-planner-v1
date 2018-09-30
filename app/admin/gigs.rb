ActiveAdmin.register Gig do
  permit_params :name, :payload, :band_id

  json_editor

  form do |f|
    f.inputs do
      f.input :name
      f.input :payload, as: :json
      f.input :band_id
    end

    f.actions
  end
end
