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

  describe 'Get #Show' do
    let(:params) { '1' }

    before do
      Attendee.should_receive(:find).with(params)
    end

    specify do
      get :show,id: params
      response.should be_success
    end
  end

  describe 'Post: #New' do
    let(:attendee) { mock 'Attendee' }

    before do
      Attendee.should_receive(:new).and_return attendee
    end

    specify do
      post :new
      response.should be_success
    end
  end
end
