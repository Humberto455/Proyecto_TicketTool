using Microsoft.Maui.Controls;
using MongoDB.Bson;
using System;

namespace TicketApp.Views
{
    public partial class TicketListPage : ContentPage
    {
        private bool _isEditMode;

        public TicketListPage(bool isEditMode = false)
        {
            InitializeComponent();
            _isEditMode = isEditMode;
            LoadTickets();
        }

        private async void LoadTickets()
        {
            var tickets = await App.TicketService.GetTicketsAsync();
            TicketListView.ItemsSource = tickets;
        }

        private async void OnSelectTicketClicked(object sender, EventArgs e)
        {
            var button = (Button)sender;
            var ticketId = button.CommandParameter.ToString();

            if (_isEditMode)
            {
                var ticket = await App.TicketService.GetTicketAsync(ticketId);
                await Navigation.PushAsync(new EditTicketPage(ticket));
            }
        }

        private async void OnDeleteTicketClicked(object sender, EventArgs e)
        {
            var button = sender as Button;
            var ticketId = button.CommandParameter.ToString();

            if (_isEditMode)
            {   
                var confirm = await DisplayAlert("Confirmación", "¿Estás seguro de que deseas eliminar este ticket?", "Sí", "No");

                if (confirm)
                {
                    await App.TicketService.RemoveTicketAsync(ticketId);
                    await DisplayAlert("Éxito", "Ticket eliminado con éxito.", "OK");
                    await Navigation.PopAsync();
                }
            }
        }
    }
}
