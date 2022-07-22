require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/salaries", type: :request do
  
  # Salary. As you add validations to Salary, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Salary.create! valid_attributes
      get salaries_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      salary = Salary.create! valid_attributes
      get salary_url(salary)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_salary_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      salary = Salary.create! valid_attributes
      get edit_salary_url(salary)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Salary" do
        expect {
          post salaries_url, params: { salary: valid_attributes }
        }.to change(Salary, :count).by(1)
      end

      it "redirects to the created salary" do
        post salaries_url, params: { salary: valid_attributes }
        expect(response).to redirect_to(salary_url(Salary.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Salary" do
        expect {
          post salaries_url, params: { salary: invalid_attributes }
        }.to change(Salary, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post salaries_url, params: { salary: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested salary" do
        salary = Salary.create! valid_attributes
        patch salary_url(salary), params: { salary: new_attributes }
        salary.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the salary" do
        salary = Salary.create! valid_attributes
        patch salary_url(salary), params: { salary: new_attributes }
        salary.reload
        expect(response).to redirect_to(salary_url(salary))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        salary = Salary.create! valid_attributes
        patch salary_url(salary), params: { salary: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested salary" do
      salary = Salary.create! valid_attributes
      expect {
        delete salary_url(salary)
      }.to change(Salary, :count).by(-1)
    end

    it "redirects to the salaries list" do
      salary = Salary.create! valid_attributes
      delete salary_url(salary)
      expect(response).to redirect_to(salaries_url)
    end
  end
end