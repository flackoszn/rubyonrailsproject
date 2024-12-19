SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :admin, 'admin', '/admin'
    primary.item :listini, 'Listini', listini_path
    primary.item :clienti, 'Clienti', clienti_path
    primary.item :ordini, 'Ordini', ordini_path
    primary.item :stats, 'Stats', stats_path
    primary.item :logout, 'Logout', logout_path, method: :delete
  end
end

puts "SimpleNavigation è caricato correttamente!"
