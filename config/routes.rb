YearbookApp::Application.routes.draw do
  get('/morning', { :controller => 'Courses', :action => 'amdev' })
end
