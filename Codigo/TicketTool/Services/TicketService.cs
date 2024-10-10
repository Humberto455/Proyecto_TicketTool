using MongoDB.Bson;
using MongoDB.Driver;
using System.Collections.Generic;
using System.Threading.Tasks;

public class TicketService
{
    private readonly IMongoCollection<Ticket> _tickets;

    public TicketService(IMongoClient client)
    {
        var database = client.GetDatabase("TicketsDb");
        _tickets = database.GetCollection<Ticket>("Tickets");
    }

    public async Task<List<Ticket>> GetTicketsAsync()
    {
        return await _tickets.Find(ticket => true).ToListAsync();
    }

    public async Task<Ticket> GetTicketByIdAsync(string id)
    {
        var objectId = new ObjectId(id);  // Convertimos de string a ObjectId
        return await _tickets.Find(ticket => ticket.Id == objectId).FirstOrDefaultAsync();
    }

    public async Task CreateTicketAsync(Ticket ticket)
    {
        await _tickets.InsertOneAsync(ticket);
    }

    public async Task UpdateTicketAsync(Ticket ticket)
    {
        var filter = Builders<Ticket>.Filter.Eq(t => t.Id, ticket.Id);
        await _tickets.ReplaceOneAsync(filter, ticket);
    }

    public async Task DeleteTicketAsync(string id)
    {
        var objectId = new ObjectId(id);  // Convertimos de string a ObjectId
        await _tickets.DeleteOneAsync(ticket => ticket.Id == objectId);
    }
}
