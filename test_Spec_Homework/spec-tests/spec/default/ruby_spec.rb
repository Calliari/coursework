require 'spec_helper'

describe package('git') do
  it { should be_installed }
end

describe package('ruby') do
  it { should be_installed.with_version('2.4.0')}
end

describe package('bundler') do
  it { should be_installed.by('gem')}
end

describe package('rake') do
  it { should be_installed.by('gem')}
end

describe package('rails') do
  it { should be_installed.by('gem')}
end

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(80) do
  it { should be_listening }
end
