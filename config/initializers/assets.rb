# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( js/jquery.min.js )
Rails.application.config.assets.precompile += %w( js/popper.js )
Rails.application.config.assets.precompile += %w( jquery-slimscroll/jquery.slimscroll.js )
Rails.application.config.assets.precompile += %w( js/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.blockui.min.js )
Rails.application.config.assets.precompile += %w( js/app.js )
Rails.application.config.assets.precompile += %w( js/layout.js )
Rails.application.config.assets.precompile += %w( js/theme-color.js )
Rails.application.config.assets.precompile += %w( js/material.min.js )
Rails.application.config.assets.precompile += %w( getmdl-select.js )
Rails.application.config.assets.precompile += %w( plugins/jquery-ui/jquery-ui.min.js )
Rails.application.config.assets.precompile += %w( plugins/moment/moment.min.js )
Rails.application.config.assets.precompile += %w( plugins/fullcalendar/fullcalendar.js )
Rails.application.config.assets.precompile += %w( calendar.min.js )
Rails.application.config.assets.precompile += %w( plugins/datatables/jquery.dataTables.min.js)
Rails.application.config.assets.precompile += %w( plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.js)
Rails.application.config.assets.precompile += %w( plugins/datatables/export/dataTables.buttons.min.js)
Rails.application.config.assets.precompile += %w( plugins/datatables/export/buttons.flash.min.js)
Rails.application.config.assets.precompile += %w( plugins/datatables/export/jszip.min.js)
Rails.application.config.assets.precompile += %w( plugins/datatables/export/pdfmake.min.js)
Rails.application.config.assets.precompile += %w( plugins/datatables/export/vfs_fonts.js)
Rails.application.config.assets.precompile += %w( plugins/datatables/export/buttons.html5.min.js)
Rails.application.config.assets.precompile += %w( plugins/datatables/export/buttons.print.min.js)
Rails.application.config.assets.precompile += %w( js/pages/table/table_data.js)
Rails.application.config.assets.precompile += %w(plugins/material-datetimepicker/moment-with-locales.min.js)
Rails.application.config.assets.precompile += %w(plugins/material-datetimepicker/bootstrap-material-datetimepicker.js bootstrap-material-datetimepicker.css)
Rails.application.config.assets.precompile += %w(plugins/material-datetimepicker/datetimepicker.js)