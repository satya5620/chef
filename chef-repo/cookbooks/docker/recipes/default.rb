docker_installation_package 'default' do
    version '18.03.1'
    action :create
  end


docker_image 'hello-world' do
    action :pull
end


docker_container 'hello-world' do
  command '/hello'
  action :create
end  