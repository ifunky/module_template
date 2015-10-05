require 'spec_helper'

describe 'template', :type => :class do
  let(:facts) { {
      :osfamily  => 'windows'
  } }

 describe 'The catalog should compile' do
   let(:title) { '' }
   let(:params) {{
       :ensure          => 'present',
       :example_path 		=> 'c:\Temp'
   }}

   it {
     is_expected.to compile.with_all_deps
     should contain_class('template')
   }
 end

  describe 'Not passing ensure correct values should fail' do
    let(:title) { '' }
    let(:params) {{
        :ensure           => 'nope',
        :example_path 		=> 'c:\path_to_something'
    }}

    it { should compile.and_raise_error(/ERROR: You must specify present or absent/) }
  end

  describe 'Not passing example_path should fail' do
    let(:title) { '' }
    let(:params) {{
        :ensure           => 'present',
        :example_path 		=> ''
    }}

    it { should compile.and_raise_error(/\"\" is not an absolute path/) }
  end

end