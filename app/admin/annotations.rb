ActiveAdmin.register Annotation do
  permit_params :piece_id, :payload

  json_editor

  form do |f|
    f.inputs do
      f.input :piece_id, :label => "PieceID"
      f.input :payload, as: :json
    end

    f.actions
  end

end
