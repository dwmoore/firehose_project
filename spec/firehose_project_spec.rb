require 'spec_helper'

describe FirehoseProject do
  it 'has a version number' do
    expect(FirehoseProject::VERSION).not_to be nil
  end
end
