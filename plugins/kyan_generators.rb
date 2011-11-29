##
# Kyan generators plugin for Padrino
#


# include additional generators
inject_into_file destination_root('config/boot.rb'), "\# include additional generators\nPadrino::Generators.load_paths << Padrino.root('generators', 'kyan_admin_page_generator.rb')\nPadrino::Generators.load_paths << Padrino.root('generators', 'kyan_admin_generator.rb')\n\n", :before => "Padrino.load!"

say "Cloning custom generators from git@github.com:xavierRiley/Kyan-Padrino-Admin-Generators.git", :red
run "git clone git@github.com:xavierRiley/Kyan-Padrino-Admin-Generators.git generators"
