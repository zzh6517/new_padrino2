require 'pact/provider/rspec'

Pact.service_provider "new padrino2" do

  honours_pact_with 'new padrino1' do
    #配置pact文件路径
    pact_uri '../new_padrino1/spec/pacts/new_padrino1-new_padrino2.json'
  end
end



Pact.provider_states_for "new padrino1" do

  provider_state "new_padrino2将返回string数据" do
    set_up do
      #此处可自定义服务需要的数据或变量
    end
  end

  provider_state "new_padrino2将返回json数据" do
    set_up do
      #此处可自定义服务需要的数据或变量
    end
  end


end