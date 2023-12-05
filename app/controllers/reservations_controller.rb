class ReservationsController < ApplicationController
  before_action :find_reservation, only: [:show, :destroy, :edit, :update]

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @user = User.find(params[:user_id].to_i)
    @reservation = Reservation.new(reservation_params)

    @reservation.student_id = current_user.id
    @reservation.teacher_id = @user.id

    if @reservation.save
      redirect_to user_reservations_path(@user), notice: 'La réservation a été créée avec succès.'
    else
      flash.now[:alert] = 'Erreur lors de la création de la réservation.'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # Avant cette action, la réservation est déjà chargée par le filtre before_action.
  end

  def destroy
    @reservation.update(statut: 'Refusée')
    redirect_to user_reservations_path(current_user), notice: 'La réservation a été refusée.'
  end

  def edit
    # L'action d'édition devrait simplement rendre le formulaire existant.
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to user_reservations_path(@reservation.teacher), notice: 'La réservation a été mise à jour avec succès.'
    else
      flash.now[:alert] = 'Erreur lors de la mise à jour de la réservation.'
      render :edit, status: :unprocessable_entity
    end
  end

  def validate
    @reservation = Reservation.find(params[:reservation_id].to_i)
    @reservation.update(statut: "Validée")
    redirect_to user_reservations_path(current_user)
  end

  private

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:student_id, :teacher_id, :start_date, :end_date)
  end
end
