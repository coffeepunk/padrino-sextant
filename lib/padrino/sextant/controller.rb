require 'erubis'
module Padrino
  module Sextant
    module Controller
      def self.registered(app)
        app.controller :routes do

          ## /padrino/routes
          get :index , map: '/padrino/routes'  do

            app_routes = []
            Padrino.mounted_apps.each do |mounted_app|
              app_routes.concat(mounted_app.named_routes)
            end

            app_routes.map! { |r| [r.name, r.verb, r.path, r.identifier] }

            template = File.read(File.join(File.dirname(__FILE__), 'sextant_index.erb'))
            template = Erubis::Eruby.new(template)
            template.result(app_routes: app_routes)
          end
        end
      end
    end
  end
end
