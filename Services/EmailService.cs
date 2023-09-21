using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FluentEmail.Core;
using MailKit.Net.Smtp;
using MailKit.Security;
using Microsoft.Extensions.Options;
using MimeKit;
using MimeKit.Text;
using PracticeCrud.Models;
namespace PracticeCrud.Services
{


    public class EmailService : IMailService
    {

        private readonly MailSettings _mailSettings;
        private readonly IFluentEmail _email;

        public EmailService(IOptions<MailSettings> mailSettings, IFluentEmail email)
        {
            _mailSettings = mailSettings.Value;
            _email = email;
        }

        public async Task SendFluentEmailAsync()
        {
            var emailFluent = await _email.SetFrom("nexawo.noreply@gmail.com")
            .To("abdullahshahjee7@gmail.com", "Abdullah Shah")
            .Subject("Testing By Fluent")
            .Body("Works!")
            .SendAsync();
        }


        public async Task SendEmailAsync(MailRequest mailRequest)
        {
            var email = new MimeMessage();
            email.Sender = MailboxAddress.Parse(_mailSettings.Mail);
            email.To.Add(MailboxAddress.Parse(mailRequest.ToEmail));
            email.Subject = mailRequest.Subject;
            var builder = new BodyBuilder();

            builder.HtmlBody = mailRequest.Body;
            email.Body = builder.ToMessageBody();
            using var smtp = new SmtpClient();
            smtp.Connect(_mailSettings.Host, _mailSettings.Port, SecureSocketOptions.SslOnConnect);
            smtp.Authenticate(_mailSettings.Mail, _mailSettings.Password);
            await smtp.SendAsync(email);
            smtp.Disconnect(true);
        }

        // public async void Send(string to=null, string subject=null, string html=null, string from = null)
        // {
        //     // create message
        //     var email = new MimeMessage();
        //     email.From.Add(MailboxAddress.Parse("nexawo.noreply@gmail.com"));
        //     email.To.Add(MailboxAddress.Parse("abdullahshaah6@gmail.com"));
        //     email.Subject = "Test Email Subject";
        //     email.Body = new TextPart(TextFormat.Html) { Text = "<h1>Example HTML Message Body</h1>" };

        //     // send email
        //     using var smtp = new SmtpClient();
        //     await smtp.ConnectAsync("smtp.gmail.com", 587, SecureSocketOptions.SslOnConnect);
        //     smtp.Authenticate("nexawo.noreply@gmail.com", "vxsvmqiqxgkdblox");
        //     smtp.Send(email);
        //     smtp.Disconnect(true);
        // }
    }
}