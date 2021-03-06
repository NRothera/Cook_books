# # encoding: utf-8

# Inspec test for recipe node::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

#nginx
describe package('nginx') do
  it {should be_installed}
end

describe service('nginx') do
  it {should be_running}
  it {should be_enabled}
end

# This is an example test, replace it with your own test.
describe port(80) do
  it {should be_listening}
end

describe http('http://localhost', enable_remote_worker: true) do
  its('status') {should cmp 502}
end

#node
describe package('nodejs') do
  it {should be_installed}
  its('version') {should match /6\../}
end
