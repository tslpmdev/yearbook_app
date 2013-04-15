YearbookApp::Application.routes.draw do
  get('/morning', { :controller => 'Courses', :action => 'amdev' })
  get('/afternoon', { :controller => 'Courses', :action => 'pmdev' })
end
