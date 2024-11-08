using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using TicketApp.Models;

namespace TicketApp.Services // Asegúrate de usar el espacio de nombres correcto
{
    public class TicketService
    {
        private readonly IMongoCollection<Ticket> _tickets;

        public TicketService(string connectionString)
        {
            try
            {
                var client = new MongoClient(connectionString);
                var database = client.GetDatabase("TicketsDb");
                _tickets = database.GetCollection<Ticket>("Tickets");
            }
            catch (Exception ex)
            {
                // Manejo de errores: log o lanzar la excepción
                Console.WriteLine($"Error al conectar a MongoDB: {ex.Message}");
                throw;
            }
        }


        public async Task<List<Ticket>> GetTicketsAsync()
        {
            return await _tickets.Find(ticket => true).ToListAsync();
        }

        public async Task<Ticket> GetTicketAsync(string id)
        {
            return await _tickets.Find(ticket => ticket.Id == new ObjectId(id)).FirstOrDefaultAsync();
        }

        public async Task CreateTicketAsync(Ticket ticket)
        {
            ticket.FechaSolicitado = DateTime.UtcNow;
            ticket.FechaActualizacion = DateTime.UtcNow;
            await _tickets.InsertOneAsync(ticket);
        }

        public async Task UpdateTicketAsync(string id, Ticket ticketIn)
        {
            ticketIn.FechaActualizacion = DateTime.UtcNow;
            await _tickets.ReplaceOneAsync(ticket => ticket.Id == new ObjectId(id), ticketIn);
        }

        public async Task RemoveTicketAsync(string id)
        {
            await _tickets.DeleteOneAsync(ticket => ticket.Id == new ObjectId(id));
        }
    }
}
