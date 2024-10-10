using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

public class Ticket
{
    [BsonId]
    public ObjectId Id { get; set; }

    public string Titulo { get; set; }
    public string Descripcion { get; set; }
    public string Estatus { get; set; }
    public string Departamento { get; set; }
    public DateTime FechaSolicitado { get; set; }
    public DateTime FechaActualizacion { get; set; }
}
