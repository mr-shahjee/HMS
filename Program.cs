using PracticeCrud.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using PracticeCrud.Services;
using Microsoft.OpenApi.Models;
//var  MyAllowSpecificOrigins = "AllowOrigin";

var builder = WebApplication.CreateBuilder(args);
builder.Services.Configure<MailSettings>(builder.Configuration.GetSection("MailSettings"));
builder.Services.AddTransient<IMailService, PracticeCrud.Services.EmailService>();
// Add services to the container.
builder.Services.AddCors(options => {
              options.AddPolicy(name:"AllowOrigin", builder => {
                  builder.WithOrigins("http://localhost:4200").AllowAnyHeader().AllowAnyMethod();
              });
          });

builder.Services.AddFluentEmail("nexawo.noreply@gmail.com")
.AddSmtpSender(new System.Net.Mail.SmtpClient("smtp.gmail.com"){
    EnableSsl = false,
    DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
    Port = 587,
    UseDefaultCredentials = false,
    Credentials = new System.Net.NetworkCredential("nexawo.noreply@gmail.com", "vxsvmqiqxgkdblox")

});


// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();



          var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<UserContext>(options => options.UseSqlServer(connectionString));
builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme).AddJwtBearer(x => 
{
    x.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateLifetime = true,
        ValidateIssuerSigningKey = true,
        ValidIssuer = "localhost",
        ValidAudience = "localhost",
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("jwtConfig:Key")),
        ClockSkew = TimeSpan.Zero
    };
});

builder.Services.AddControllers();
builder.Services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "PracticeCrud-master", Version = "v1" });
            });


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    //app.UseSwaggerUI(c => c.SwaggerEndpoint("/PracticeCrud/swagger/v1/swagger.json", "PracticeCrud v1"));
}




app.UseHttpsRedirection();

app.UseRouting();
app.UseCors("AllowOrigin");
app.UseAuthentication();

app.UseAuthorization();

app.MapControllers();

app.Run();
