require 'spec_helper'

describe AttendeesController do
  before do
    controller.stub :authenticate_user!
  end

  describe "Get: Index" do
    before do
      Attendee.should_receive(:all)
    end

    specify do
      get :index
      response.code.should == ("200")
      response.should be_success
    end
  end
end
