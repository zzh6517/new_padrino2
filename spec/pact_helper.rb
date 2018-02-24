require 'pact/provider/rspec'

Pact.service_provider "new padrino2" do

  honours_pact_with 'new padrino1' do
    pact_uri '../new_padrino1/spec/pacts/my_consumer-my_provider.json'
  end
end



Pact.provider_states_for "My Consumer" do

  provider_state "provider is in a sane state" do
    set_up do
      # Your set up code goes here
    end
  end

end