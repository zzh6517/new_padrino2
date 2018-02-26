require 'pact/provider/rspec'

Pact.service_provider "new padrino2" do

  honours_pact_with 'new padrino1' do
    pact_uri '../new_padrino1/spec/pacts/new_padrino1-new_padrino2.json'
  end
end



Pact.provider_states_for "new padrino1" do

  provider_state "返回json数据的服务提供者" do
    set_up do
      # Your set up code goes here
    end
  end

  provider_state "返回string数据的服务提供者" do
    set_up do
      # Your set up code goes here
    end
  end


end