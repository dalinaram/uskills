class ReservationsController < ApplicationController

  def index
    @reservations= Reservation.all
  end
  def new
    @reservation = Reservation.new
    render :new
  end

  def create
    @user = User.find(params[:user_id].to_i)
    @reservation = Reservation.new(reservation_params)

    @reservation.student_id = current_user.id
    @reservation.teacher_id = @user.id

    if @reservation.save
      redirect_to user_reservations_path, notice: 'La réservation a été créée avec succès.'
    else
      flash.now[:alert] = 'Erreur lors de la création de la réservation.'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def check_availability
    user_reservations = Reservation.where(user: params[:user_id])
    reservation_params = params[:reservation]

    user_reservations.each do |resa|
      resa_start_date = resa.start_date.to_date
      resa_end_date = resa.end_date.to_date

      input_start_date = Date.parse(reservation_params[:start_date])
      input_end_date = Date.parse(reservation_params[:end_date])

      if (resa_start_date <= input_start_date && input_start_date <= resa_end_date) ||
         (resa_start_date <= input_end_date && input_end_date <= resa_end_date) ||
         (input_start_date <= resa_start_date && resa_end_date <= input_end_date)
        return true
      end
    end
    return false
  end

  def reservation_params
    params.require(:reservation).permit(:student_id, :teacher_id, :start_date, :end_date )
  end

end
