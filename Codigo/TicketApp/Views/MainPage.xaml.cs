using Microsoft.Maui.Controls;

namespace TicketApp.Views
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private async void OnCreateTicketClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CreateTicketPage());
        }

        private async void OnListTicketsClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TicketListPage());
        }

        private async void OnEditTicketClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TicketListPage(isEditMode: true));
        }
    }
}
