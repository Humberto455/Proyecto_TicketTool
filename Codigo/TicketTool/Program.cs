using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;
using MongoDB.Driver;
using TicketTool.Data;

var builder = WebApplication.CreateBuilder(args);

// Configurar MongoDB
builder.Services.AddSingleton<IMongoClient, MongoClient>(sp =>
{
    var connectionString = builder.Configuration.GetConnectionString("MongoDb");
    return new MongoClient(connectionString);
});

// Registrar servicios
builder.Services.AddScoped<TicketService>();
builder.Services.AddScoped<AuthService>();

// Agregar servicios de Blazor
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();

var app = builder.Build();

// Configurar el pipeline de la aplicación
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");

app.Run();
