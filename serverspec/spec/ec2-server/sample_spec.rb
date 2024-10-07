require 'spec_helper'

listen_port = 80

#Nginxがインストール済であること  
describe package('nginx') do  
  it { should be_installed }  
  end

#指定のポートがリッスン（通信待ち受け状態）であること  
describe port(listen_port) do  
  it { should be_listening }  
end  

#curlでHTTPアクセスして200 OKが返ってくるか確認する  
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%  {http_code}\n" -s') do  
  its(:stdout) { should match /^200$/ }  
end

#gitがインストール済であること  
describe package('git') do  
      it { should be_installed }  
end  

#指定のバージョンがインストールされているか  
# Rubyバージョン確認
describe command('cd raisetech-live8-sample-app/ && ruby -v') do
  its(:stdout) { should include '3.2.3' }
end

describe command('bundler -v') do  
  its(:stdout) { should include '2.3.14' }  
end  
        
# Railsバージョン確認
describe command('rails -v') do
  its(:stdout) { should include '7.1.3.2' }
end 
        
describe command('node -v') do  
  its(:stdout) { should include '17.9.1' }  
end  
        
describe command('yarn -v') do  
  its(:stdout) { should include '1.22.19' }  
end  
