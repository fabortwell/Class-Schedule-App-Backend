require 'swagger_helper'

RSpec.describe 'announcements', type: :request do

  path '/announcements' do

    get('list announcements') do
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

    post('create announcement') do
      response(200, 'successful') do
        consumes 'application/json'        
        parameter name: :announcement, in: :body, schema: {         
          type: :object,          
          properties: {                        
            title: { type: :string },            
            description: { type: :string },  
            technical_mentor_id: { type: :integer }         
          },          
          required: %w[title description technical_mentor_id]  
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

  path '/announcements/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show announcement') do
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

    patch('update announcement') do
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'        
        parameter name: :announcement, in: :body, schema: {         
          type: :object,          
          properties: {                        
            title: { type: :string },            
            description: { type: :string },  
            technical_mentor_id: { type: :integer }         
          },          
          required: %w[title description technical_mentor_id]  
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

    put('update announcement') do
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'        
        parameter name: :announcement, in: :body, schema: {         
          type: :object,          
          properties: {                        
            title: { type: :string },            
            description: { type: :string },  
            technical_mentor_id: { type: :integer }         
          },          
          required: %w[title description technical_mentor_id]  
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

    delete('delete announcement') do
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
