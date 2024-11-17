using Microsoft.Maui.Controls;
using TicketApp.Services;

namespace TicketApp
{
    public static class AppConfig
    {
        // Aquí puedes definir tu cadena de conexión --> mongodb://10.0.2.2:27017/
        public static string ConnectionString => "mongodb://craptor455:pgHzwgUmM4GPG6TN@cluster0-shard-00-00.vzwk9.mongodb.net:27017,cluster0-shard-00-01.vzwk9.mongodb.net:27017,cluster0-shard-00-02.vzwk9.mongodb.net:27017/TicketsDb?ssl=true&replicaSet=atlas-bbh3xh-shard-0&authSource=admin&retryWrites=true&w=majority\r\n";
    }

    public partial class App : Application
    {
        public static TicketService TicketService { get; private set; }

        public App()
        {
            InitializeComponent();

            // Usa la cadena de conexión desde la configuración
            TicketService = new TicketService(AppConfig.ConnectionString);

            MainPage = new NavigationPage(new Views.LoginPage());
        }
    }
}
