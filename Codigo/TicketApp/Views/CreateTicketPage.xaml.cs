using Microsoft.Maui.Controls;
using TicketApp.Models;
using TicketApp.Services; // Asegúrate de tener esto


namespace TicketApp.Views
{
    public partial class CreateTicketPage : ContentPage
    {
        public CreateTicketPage()
        {
            InitializeComponent();
        }

        private async void OnCreateTicketClicked(object sender, EventArgs e)
        {
            var ticket = new Ticket
            {
                Titulo = TituloEntry.Text,
                Descripcion = DescripcionEntry.Text,
                Estatus = EstatusPicker.SelectedItem?.ToString(),
                Departamento = DepartamentoPicker.SelectedItem?.ToString()
            };

            await App.TicketService.CreateTicketAsync(ticket);
            await DisplayAlert("Éxito", "Ticket creado con éxito.", "OK");
            await Navigation.PopAsync();
        }
    }
}
