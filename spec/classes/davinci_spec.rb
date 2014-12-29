require 'spec_helper'
describe 'davinci' do
  let :default_params do
    {}
  end

  [ {},
  ].each do |param_set|
    describe "when #{param_set == {} ? "using default" : "specifying"} class parameters" do

    ['Arch', 'Debian', 'RedHat', 'Ubuntu'].each do |osfamily|
      let :facts do
        {
          :osfamily       => osfamily
        }
      end

      describe "on supported osfamily: #{osfamily}" do
        it { should contain_file('/root/.workspace/.garbage.')}
      end
    end
    end
  end
end
