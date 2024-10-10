using MongoDB.Driver;

public class MongoDbContext
{
    private readonly IMongoDatabase _database;

    public MongoDbContext(IMongoClient client)
    {
        _database = client.GetDatabase("TicketsDb");
    }

    public IMongoCollection<Ticket> Tickets => _database.GetCollection<Ticket>("Tickets");
    public IMongoCollection<User> Users => _database.GetCollection<User>("Users");
}
