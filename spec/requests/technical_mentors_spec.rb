require 'swagger_helper'

RSpec.describe 'technical_mentors', type: :request do

  path '/technical_mentors' do

    get('list technical_mentors') do
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create technical_mentor') do
      response(200, 'successful') do
        consumes 'application/json'        
        parameter name: :technical_mentor, in: :body, schema: {         
          type: :object,          
          properties: {                        
            name: { type: :string },            
            password_digest: { type: :string },  
            email: { type: :string }, 
            phone_no: { type: :integer }         
          },          
          required: %w[name password_digest email email phone_no]  
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/technical_mentors/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show technical_mentor') do
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'        
        parameter name: :technical_mentor, in: :body, schema: {         
          type: :object,          
          properties: {                        
            name: { type: :string },            
            password_digest: { type: :string },  
            email: { type: :string }, 
            phone_no: { type: :integer }         
          },          
          required: %w[name password_digest email email phone_no]  
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update technical_mentor') do
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'        
        parameter name: :technical_mentor, in: :body, schema: {         
          type: :object,          
          properties: {                        
            name: { type: :string },            
            password_digest: { type: :string },  
            email: { type: :string }, 
            phone_no: { type: :integer }         
          },          
          required: %w[name password_digest email email phone_no]  
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update technical_mentor') do
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'        
        parameter name: :technical_mentor, in: :body, schema: {         
          type: :object,          
          properties: {                        
            name: { type: :string },            
            password_digest: { type: :string },  
            email: { type: :string }, 
            phone_no: { type: :integer }         
          },          
          required: %w[name password_digest email email phone_no]  
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete technical_mentor') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
