require 'spec_helper'

describe Chef::Provisioning::GCEDriver do
  it 'should return a version' do
    expect(described_class.version).to match(/\d+\.\d+\.\d+/)
  end
end
