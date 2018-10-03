ActiveAdmin.register Gig do
  permit_params :name, :band_id, :payload, set_list_ids: []

  json_editor

  form do |f|
    f.inputs do
      f.input :name
      f.input :band_id, {
        label: "BandID",
        as: :select,
        collection: Band.all.collect {|band| "#{band.id}: #{band.name}"}
      }
      f.input :set_lists
      f.input :payload, as: :json
    end

    f.actions
  end
end
