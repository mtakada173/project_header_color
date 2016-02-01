require 'redmine'
require_dependency 'project_header_color/hooks.rb'

Redmine::Plugin.register :project_header_color do
  name 'Project Header Color'
  author 'Mitsuhiro Takada'
  description 'Set header color per user and per project.'
  version '0.0.1'
  url 'https://github.com/mtakada173/project_header_color.git'

  permission :project_header_color, { user_project_colors: [:index, :create] }, public: true
  menu :project_menu, :project_header_color, { controller: :user_project_colors, action: :index },
       caption: '背景色', param: :project_id
end
