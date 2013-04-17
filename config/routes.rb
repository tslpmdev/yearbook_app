YearbookApp::Application.routes.draw do
  get('/morning', { :controller => 'Courses', :action => 'amdev' })
  get('/afternoon', { :controller => 'Courses', :action => 'pmdev' })
  get('/beginnerhtmltuesday', { :controller => 'Courses', :action => 'beghtmltue' })
  get('/beginnerhtmlwednesday', { :controller => 'Courses', :action => 'beghtmlwed' })
  get('/advancedhtml', { :controller => 'Courses', :action => 'advhtml' })
  get('/visualdesign', { :controller => 'Courses', :action => 'visual' })
  get('/userexperience', { :controller => 'Courses', :action => 'ux' })
end
