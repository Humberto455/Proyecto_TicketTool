using MongoDB.Driver;
using System.Threading.Tasks;
using BCrypt.Net;

public class AuthService
{
    private readonly IMongoCollection<User> _users;
    private bool isAuthenticated = false;  // Estado de autenticación del usuario actual

    public AuthService(IMongoClient client)
    {
        var database = client.GetDatabase("TicketsDb");
        _users = database.GetCollection<User>("Users");  // Colección 'Users'
    }

    public bool IsUserAuthenticated => isAuthenticated; // Propiedad pública para comprobar autenticación

    public enum LoginResult
    {
        Success,
        InvalidEmail,
        InvalidPassword
    }

    public async Task<LoginResult> ValidateLoginAsync(string email, string password)
    {
        var user = await _users.Find(u => u.Email == email).FirstOrDefaultAsync();

        if (user == null)
        {
            // No se encontró un usuario con el correo proporcionado
            return LoginResult.InvalidEmail;
        }

        if (!BCrypt.Net.BCrypt.Verify(password, user.PasswordHash))
        {
            // La contraseña no coincide
            return LoginResult.InvalidPassword;
        }

        // Autenticación exitosa
        isAuthenticated = true;
        return LoginResult.Success;
    }


    public async Task<bool> RegisterUserAsync(string email, string password)
    {
        // Verificar si el usuario ya existe
        var existingUser = await _users.Find(u => u.Email == email).FirstOrDefaultAsync();
        if (existingUser != null)
        {
            return false; // El usuario ya existe
        }

        // Encriptar la contraseña antes de guardarla
        var passwordHash = BCrypt.Net.BCrypt.HashPassword(password);

        // Crear nuevo usuario con la contraseña encriptada
        var newUser = new User
        {
            Email = email,
            PasswordHash = passwordHash
        };

        await _users.InsertOneAsync(newUser);
        return true; // Registro exitoso
    }

    public async Task LogoutAsync()
    {
        isAuthenticated = false; // Cerrar sesión
    }
}
