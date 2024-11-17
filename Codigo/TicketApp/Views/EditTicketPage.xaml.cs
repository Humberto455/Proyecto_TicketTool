using Microsoft.Maui.Controls;
using TicketApp.Models;

namespace TicketApp.Views
{
    public partial class EditTicketPage : ContentPage
    {
        private Ticket _ticket;

        public EditTicketPage(Ticket ticket)
        {
            InitializeComponent();
            _ticket = ticket;
            LoadTicketData();
        }

        private void LoadTicketData()
        {
            TituloEntry.Text = _ticket.Titulo;
            DescripcionEntry.Text = _ticket.Descripcion;
            EstatusPicker.SelectedItem = _ticket.Estatus;
            DepartamentoPicker.SelectedItem = _ticket.Departamento;
        }

        private async void OnUpdateTicketClicked(object sender, EventArgs e)
        {
            // Validar si los campos están vacíos
            if (string.IsNullOrWhiteSpace(TituloEntry.Text) ||
                string.IsNullOrWhiteSpace(DescripcionEntry.Text) ||
                EstatusPicker.SelectedItem == null ||
                DepartamentoPicker.SelectedItem == null)
            {
                // Mostrar alerta si algún campo está vacío
                await DisplayAlert("Error", "Por favor, complete todos los campos.", "OK");
                return; // No continuar con la actualización del ticket
            }

            // Asignar los valores de los campos al ticket
            _ticket.Titulo = TituloEntry.Text;
            _ticket.Descripcion = DescripcionEntry.Text;
            _ticket.Estatus = EstatusPicker.SelectedItem?.ToString();
            _ticket.Departamento = DepartamentoPicker.SelectedItem?.ToString();

            // Actualizar el ticket en el servicio
            await App.TicketService.UpdateTicketAsync(_ticket.Id.ToString(), _ticket);
            await DisplayAlert("Éxito", "Ticket actualizado con éxito.", "OK");

            // Navegar a la MainPage después de la actualización
            await Navigation.PushAsync(new MainPage());
        }
    }
}
