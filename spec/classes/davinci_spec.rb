require 'spec_helper'

describe 'davinci' do
  context 'On Debian with no other parameters' do
    let :facts do
      {
        :osfamily => 'Debian'
      }
    end
    it {
      should contain_file('/root/.workspace/.garbage.').with(
        :content => '                     UNITED ARTISTS PICTURES

                             presents

                       an IAIN SOFTLEY film

                            "HACKERS"

                         JONNY LEE MILLER

                          ANGELINA JOLIE

                          FISHER STEVENS

                       and LORRAINE BRACCO

                      music by SIMON BOSWELL

           edited by CHRISTOPHER BLUNDEN  MARTIN WALSH

                  production designer JOHN BEARD

              director of photography ANDRZEJ SEKULA

                 executive producer IAIN SOFTLEY

                     co-producer JANET GRAHAM

                     written by RAFAEL MOREU

             produced by MICHAEL PEYSER  RALPH WINTER

                     directed by IAIN SOFTLEY')}
  end
end
