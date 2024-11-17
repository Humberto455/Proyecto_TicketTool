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
            // Verificar si alguno de los campos está vacío
            if (string.IsNullOrWhiteSpace(TituloEntry.Text) ||
                string.IsNullOrWhiteSpace(DescripcionEntry.Text) ||
                EstatusPicker.SelectedItem == null ||
                DepartamentoPicker.SelectedItem == null)
            {
                // Mostrar mensaje de error si algún campo está vacío
                await DisplayAlert("Error", "Por favor, complete todos los campos.", "OK");
                return; // No continuar con la creación del ticket
            }

            // Crear el objeto ticket con los valores de los campos
            var ticket = new Ticket
            {
                Titulo = TituloEntry.Text,
                Descripcion = DescripcionEntry.Text,
                Estatus = EstatusPicker.SelectedItem.ToString(),
                Departamento = DepartamentoPicker.SelectedItem.ToString()
            };

            // Llamar al servicio para crear el ticket
            await App.TicketService.CreateTicketAsync(ticket);
            await DisplayAlert("Éxito", "Ticket creado con éxito.", "OK");
            await Navigation.PopAsync(); // Regresar a la pantalla anterior
        }
    }
}
