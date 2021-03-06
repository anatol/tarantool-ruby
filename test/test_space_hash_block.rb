require File.expand_path('../shared_space_hash.rb', __FILE__)

describe 'Tarantool::BlockDB::SpaceHash' do
  before { TConf.run(:master1) }
  let(:tarantool) { Tarantool.new(TCONFIG.merge(type: :block)) }
  it_behaves_like :blocking_hash_space
end
