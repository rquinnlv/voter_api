class RoutesTest < ActionDispatch::IntegrationTest
   
  test 'routes version' do
    assert_generates '/v1/users/index', { controller: 'v1/users', action: 'index' }
  end
end