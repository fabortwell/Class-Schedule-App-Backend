require 'swagger_helper'

RSpec.describe 'students', type: :request do

  path '/students' do

    get('list students') do
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

    post('create student') do
      response(200, 'successful') do
        consumes 'application/json'        
        parameter name: :student, in: :body, schema: {         
          type: :object,          
          properties: {                        
            name: { type: :string },            
            password_digest: { type: :string },  
            email: { type: :string }, 
            phone_no: { type: :string },
            avatar: { type: :string }          
          },          
          required: %w[name password_digest email phone_no avatar]  
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

  path '/students/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show student') do
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
