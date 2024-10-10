using MongoDB.Driver;
using System.Threading.Tasks;

public class AuthService
{
    private readonly IMongoCollection<User> _users;

    public AuthService(IMongoClient client)
    {
        var database = client.GetDatabase("TicketsDb");
        _users = database.GetCollection<User>("Users");  // Colección 'Users'
    }

    public async Task<bool> ValidateLoginAsync(string email, string password)
    {
        var user = await _users.Find(u => u.Email == email).FirstOrDefaultAsync();
        if (user != null && user.PasswordHash == password)
        {
            return true; // Usuario encontrado y contraseña coincide
        }
        return false; // Usuario no encontrado o contraseña incorrecta
    }

    public async Task<bool> RegisterUserAsync(string email, string password)
    {
        // Verificar si el usuario ya existe
        var existingUser = await _users.Find(u => u.Email == email).FirstOrDefaultAsync();
        if (existingUser != null)
        {
            return false; // El usuario ya existe
        }

        // Crear nuevo usuario sin encriptar la contraseña
        var newUser = new User
        {
            Email = email,
            PasswordHash = password // Almacena la contraseña directamente
        };

        await _users.InsertOneAsync(newUser);
        return true; // Registro exitoso
    }

    public async Task RegisterUserAsync(User user)
    {
        await _users.InsertOneAsync(user); // Registrar nuevo usuario en la base de datos
    }
}
