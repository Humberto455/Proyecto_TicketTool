using System;
using Microsoft.Maui.Controls;

namespace TicketApp.Views
{
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private async void OnLoginButtonClicked(object sender, EventArgs e)
        {
            string email = emailEntry.Text;
            string password = passwordEntry.Text;

            // Aquí puedes validar las credenciales con un backend o de forma local
            if (ValidateCredentials(email, password))
            {
                // Si la validación es exitosa, navega a la página principal
                await Navigation.PushAsync(new MainPage());
            }
            else
            {
                // Muestra un mensaje de error
                messageLabel.Text = "Correo o contraseña incorrectos.";
            }
        }

        private bool ValidateCredentials(string email, string password)
        {
            // Aquí se debería conectar a un backend o verificar credenciales localmente
            // Ejemplo de validación local para pruebas:
            return email == "prueba@prueba.com" && password == "12345678";
        }
    }
}
