using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using FluentEmail.Core;
using FluentEmail.Smtp;
using Microsoft.AspNetCore.Mvc;
using PracticeCrud.Models;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace PracticeCrud.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class EmailController : ControllerBase
    {
        private readonly IMailService mailService;
        private readonly IFluentEmail _email;
        public EmailController(IMailService mailService, IFluentEmail email)
        {
            this.mailService = mailService;
            _email = email;
        }

        [HttpPost("Send")]
        public async Task<IActionResult> Send()
        {
            var apiKey = "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";
            var client = new SendGridClient(apiKey);
            var from = new EmailAddress("nexawo.noreply@gmail.com", "Shahid Iqbal");
            var subject = "Sending with SendGrid is Fun";
            var to = new EmailAddress("abdullahshahjee7@gmail.com");
            var plainTextContent = "and easy to do anywhere, even with C#";
            var htmlContent = "<strong>and easy to do anywhere, even with C#</strong>";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
            var response = await client.SendEmailAsync(msg);

            return Ok();




            // var sender = new SmtpSender(() => new SmtpClient("smtp.gmail.com")
            // {
            //     Port = 587,
            //     UseDefaultCredentials = false,
            //     Credentials = new NetworkCredential("nexawo.noreply@gmail.com", "engfcqyolxuznajd"),
            //     EnableSsl = true
            // });
            // Email.DefaultSender = sender;

            // var email = Email.From("nexawo.noreply@gmail.com", "Shahid Iqbal")
            // .To("abdullahshaah6@gmail.com", "Abdullah Shah")
            // .Subject("Testing By Fluent")
            // .Body("Works!");
            // try
            // {
            //     await email.SendAsync();

            // }
            // catch (Exception e)
            // {

            // }

            // return Ok();


        }




        // {
        //     try
        //     {
        //     var fluentEmail =  _email.SetFrom("nexawo.noreply@gmail.com", "Shahid Iqbal")
        //     .To("abdullahshaah6@gmail.com", "Abdullah Shah")
        //     .Subject("Testing By Fluent")
        //     .Body("Works!");

        //     await fluentEmail.SendAsync();
        //     return Ok();
        //     }
        //     catch (Exception ex)
        //     {
        //         throw ex;
        //     }

        // }
    }
}