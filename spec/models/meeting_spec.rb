require 'rails_helper'

RSpec.describe Meeting, type: :model do
  # let(:meeting) { create(:meeting) }
  #
  # it 'has a tutor' do
  #   expect(meeting.tutor).not_to be_nil
  # end
  #
  # it 'requires a tutor parameter' do
  #   expect { create(:meeting, tutor: nil) }.to raise_error(ActiveRecord::RecordInvalid)
  # end
  #
  # it 'has a request' do
  #   expect(meeting.request).not_to be_nil
  # end
  #
  # it 'requires a request parameter' do
  #   expect { create(:meeting, request: nil) }.to raise_error(ActiveRecord::RecordInvalid)
  # end
  #
  # it 'stores meta_values as json' do
  #   tmp_meeting = create(:meeting, meta_values: { a: 1})
  #   expect(Meeting.find(tmp_meeting.id).meta_values).to include({'a' => 1})
  # end
end
