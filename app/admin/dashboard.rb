ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    # Sezione: Tabella degli Utenti
    panel "Gestione Utenti" do
      table_for User.all do
        column "ID", :id
        column "Nome", :name
        column "Email", :email
        column "Creato il", :created_at
        column "Azioni" do |user|
          span link_to "Modifica", edit_admin_user_path(user), class: "button"
          span link_to "Elimina", admin_user_path(user), method: :delete, data: { confirm: "Sei sicuro?" }, class: "button btn-danger"
        end
      end
      # Link per aggiungere un nuovo utente
      div do
        link_to "Aggiungi Nuovo Utente", new_admin_user_path, class: "button"
      end
    end
  end
end
