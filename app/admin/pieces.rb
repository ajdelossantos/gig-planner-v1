ActiveAdmin.register Piece do
  permit_params :title, :band_id, :payload

  json_editor

  form do |f|
    f.inputs do
      f.input :title
      f.input :band_id, :label => "BandID"
      f.input :payload, as: :json
    end

    f.actions
  end

end
