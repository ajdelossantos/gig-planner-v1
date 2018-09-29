ActiveAdmin.register Gig do
  permit_params :name, :payload

  json_editor

  form do |f|
    f.inputs do
      f.input :name
      f.input :payload, as: :json
    end

    f.actions
  end
end
