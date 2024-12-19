ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation, :role

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :role
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Dettagli Utente" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role, as: :select, collection: User::ROLES, prompt: "Seleziona un ruolo"
    end
    f.actions
  end
end
