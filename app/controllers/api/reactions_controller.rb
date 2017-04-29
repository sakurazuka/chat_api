module Api
  class ReactionsController < ApiController
    before_action :set_message,  only: [:index, :create]
    before_action :set_reaction, only: [:show, :update, :destroy]

    # GET /reactions
    def index
      @reactions = @message.reactions

      render json: @reactions
    end

    # GET /reactions/1
    def show
      render json: @reaction
    end

    # POST /reactions
    def create
      @reaction = @message.reactions.build(reaction_params)

      if @reaction.save
        render json: @reaction, status: :created, location: [@message, @reaction]
      else
        render json: @reaction.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /reactions/1
    def update
      if @reaction.update(reaction_params)
        render json: @reaction
      else
        render json: @reaction.errors, status: :unprocessable_entity
      end
    end

    # DELETE /reactions/1
    def destroy
      @reaction.destroy
    end

    private
    def set_message
      @message = Message.find(params[:message_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_reaction
      @reaction = Reaction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reaction_params
      params.require(:reaction).permit(:emoji)
    end
  end
end
