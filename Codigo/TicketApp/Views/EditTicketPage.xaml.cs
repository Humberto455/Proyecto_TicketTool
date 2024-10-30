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
            _ticket.Titulo = TituloEntry.Text;
            _ticket.Descripcion = DescripcionEntry.Text;
            _ticket.Estatus = EstatusPicker.SelectedItem?.ToString();
            _ticket.Departamento = DepartamentoPicker.SelectedItem?.ToString();

            await App.TicketService.UpdateTicketAsync(_ticket.Id.ToString(), _ticket);
            await DisplayAlert("Éxito", "Ticket actualizado con éxito.", "OK");
            await Navigation.PopToRootAsync();
        }
    }
}
