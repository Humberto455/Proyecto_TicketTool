using Microsoft.Maui.Controls;
using TicketApp.Services;
using TicketApp.Config;  // Importa la clase de configuración

namespace TicketApp
{
    public partial class App : Application
    {
        public static TicketService TicketService { get; private set; }

        public App()
        {
            InitializeComponent();

            // Usa la cadena de conexión desde la configuración
            TicketService = new TicketService(AppConfig.ConnectionString);

            MainPage = new NavigationPage(new Views.MainPage());
        }
    }
}
