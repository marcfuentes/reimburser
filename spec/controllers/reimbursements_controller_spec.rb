require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ReimbursementsController do

  # This should return the minimal set of attributes required to create a valid
  # Reimbursement. As you add validations to Reimbursement, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "reference" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReimbursementsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all reimbursements as @reimbursements" do
      reimbursement = Reimbursement.create! valid_attributes
      get :index, {}, valid_session
      assigns(:reimbursements).should eq([reimbursement])
    end
  end

  describe "GET show" do
    it "assigns the requested reimbursement as @reimbursement" do
      reimbursement = Reimbursement.create! valid_attributes
      get :show, {:id => reimbursement.to_param}, valid_session
      assigns(:reimbursement).should eq(reimbursement)
    end
  end

  describe "GET new" do
    it "assigns a new reimbursement as @reimbursement" do
      get :new, {}, valid_session
      assigns(:reimbursement).should be_a_new(Reimbursement)
    end
  end

  describe "GET edit" do
    it "assigns the requested reimbursement as @reimbursement" do
      reimbursement = Reimbursement.create! valid_attributes
      get :edit, {:id => reimbursement.to_param}, valid_session
      assigns(:reimbursement).should eq(reimbursement)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Reimbursement" do
        expect {
          post :create, {:reimbursement => valid_attributes}, valid_session
        }.to change(Reimbursement, :count).by(1)
      end

      it "assigns a newly created reimbursement as @reimbursement" do
        post :create, {:reimbursement => valid_attributes}, valid_session
        assigns(:reimbursement).should be_a(Reimbursement)
        assigns(:reimbursement).should be_persisted
      end

      it "redirects to the created reimbursement" do
        post :create, {:reimbursement => valid_attributes}, valid_session
        response.should redirect_to(Reimbursement.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved reimbursement as @reimbursement" do
        # Trigger the behavior that occurs when invalid params are submitted
        Reimbursement.any_instance.stub(:save).and_return(false)
        post :create, {:reimbursement => { "reference" => "invalid value" }}, valid_session
        assigns(:reimbursement).should be_a_new(Reimbursement)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Reimbursement.any_instance.stub(:save).and_return(false)
        post :create, {:reimbursement => { "reference" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested reimbursement" do
        reimbursement = Reimbursement.create! valid_attributes
        # Assuming there are no other reimbursements in the database, this
        # specifies that the Reimbursement created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Reimbursement.any_instance.should_receive(:update_attributes).with({ "reference" => "MyString" })
        put :update, {:id => reimbursement.to_param, :reimbursement => { "reference" => "MyString" }}, valid_session
      end

      it "assigns the requested reimbursement as @reimbursement" do
        reimbursement = Reimbursement.create! valid_attributes
        put :update, {:id => reimbursement.to_param, :reimbursement => valid_attributes}, valid_session
        assigns(:reimbursement).should eq(reimbursement)
      end

      it "redirects to the reimbursement" do
        reimbursement = Reimbursement.create! valid_attributes
        put :update, {:id => reimbursement.to_param, :reimbursement => valid_attributes}, valid_session
        response.should redirect_to(reimbursement)
      end
    end

    describe "with invalid params" do
      it "assigns the reimbursement as @reimbursement" do
        reimbursement = Reimbursement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Reimbursement.any_instance.stub(:save).and_return(false)
        put :update, {:id => reimbursement.to_param, :reimbursement => { "reference" => "invalid value" }}, valid_session
        assigns(:reimbursement).should eq(reimbursement)
      end

      it "re-renders the 'edit' template" do
        reimbursement = Reimbursement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Reimbursement.any_instance.stub(:save).and_return(false)
        put :update, {:id => reimbursement.to_param, :reimbursement => { "reference" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested reimbursement" do
      reimbursement = Reimbursement.create! valid_attributes
      expect {
        delete :destroy, {:id => reimbursement.to_param}, valid_session
      }.to change(Reimbursement, :count).by(-1)
    end

    it "redirects to the reimbursements list" do
      reimbursement = Reimbursement.create! valid_attributes
      delete :destroy, {:id => reimbursement.to_param}, valid_session
      response.should redirect_to(reimbursements_url)
    end
  end

end
