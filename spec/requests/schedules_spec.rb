require 'swagger_helper'

RSpec.describe 'schedules', type: :request do

  path '/schedules' do

    get('list schedules') do
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

    post('create schedule') do
      response(200, 'successful') do
        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            title: { type: :string },            
            date: { type: :date },  
            time: { type: :string }, 
            meeting_link: { type: :string },
            description: { type: :string }          
          },          
          required: %w[title date time meeting_link description]  
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

  path '/schedules/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show schedule') do
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

    patch('update schedule') do
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            title: { type: :string },            
            date: { type: :date },  
            time: { type: :string }, 
            meeting_link: { type: :string },
            description: { type: :string }          
          },          
          required: %w[title date time meeting_link description]  
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

    put('update schedule') do
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            title: { type: :string },            
            date: { type: :date },  
            time: { type: :string }, 
            meeting_link: { type: :string },
            description: { type: :string }          
          },          
          required: %w[title date time meeting_link description]  
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

    delete('delete schedule') do
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
