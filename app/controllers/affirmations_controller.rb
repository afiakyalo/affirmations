class AffirmationsController < ApplicationController
  def index
    @affirmation = Affirmation.order('RANDOM()').first
  end

  def next
    affirmation = Affirmation.order('RANDOM()').first
    render json: { content: affirmation.content }
  end

  private

  # def generate_affirmation
  #   client = OpenAI::Client.new(access_token: ENV['OPENAI_API_KEY'])
  #   response = client.completions(
  #     parameters: {
  #       model: "gpt-3.5-turbo",
  #       prompt: "Provide a short, positive affirmation.",
  #       max_tokens: 60
  #     }
  #   )
  #   response["choices"].first["text"].strip
  # end
end