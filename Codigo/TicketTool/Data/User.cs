using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

public class User
{
    [BsonId]
    public ObjectId Id { get; set; }

    public string Email { get; set; }
    public string PasswordHash { get; set; } // Almacena la contraseña en texto plano
}
