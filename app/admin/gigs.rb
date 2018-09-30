ActiveAdmin.register Gig do
  permit_params :name, :band_id, :payload

  json_editor

  form do |f|
    f.inputs do
      f.input :name
      f.input :band_id, :label => "BandID"
      f.input :payload, as: :json
    end

    f.actions
  end
end
