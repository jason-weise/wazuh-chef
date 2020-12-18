case os.family
when 'debian'
  describe apt('https://packages.wazuh.com/4.x/apt/') do
    it { should exist }
    it { should be_enabled }
  end
when 'redhat'
  describe yum.repo('https://packages.wazuh.com/4.x/yum/') do
    it { should exist }
    it { should be_enabled }
  end
when 'suse'
  describe yum.repo('https://packages.wazuh.com/4.x/yum/') do
    it { should exist }
    it { should be_enabled }
  end
end