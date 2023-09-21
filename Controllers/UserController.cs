using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Cors;
using PracticeCrud.Models;
using Microsoft.AspNetCore.Authorization;
using System.Net.Mail;
using System.Net;
using PracticeCrud.Services;

namespace PracticeCrud.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [EnableCors("AllowOrigin")]
    public class UserController : Controller
    {
        //private readonly IMailService mailService;
        private readonly IConfiguration _config;
        public readonly UserContext _userContext;
       // public readonly EmailService _emailService;
        public UserController(IConfiguration config, UserContext userContext, EmailService emailService)
        {
            _config = config;
            _userContext = userContext;
         //   _emailService = emailService;
            //this.mailService = mailService;
        }


        // [HttpPost("Send")]
        // public async Task<IActionResult> Send([FromForm] MailRequest request)
        // {
        //     try
        //     {
        //         await mailService.SendEmailAsync(request);
        //         return Ok();
        //     }
        //     catch (Exception ex)
        //     {

        //         throw ex;
        //     }

        // }





        [AllowAnonymous]
        [HttpPost("CreateUser")]
        public IActionResult Create(User user)
        {
            if(_userContext.users.Where(u => u.Email == user.Email).FirstOrDefault() != null)
            {
                return Ok("Already Exist");
            }
            user.MemberSince = DateTime.Now;
            _userContext.users.Add(user);
            _userContext.SaveChanges();
            return Ok("Success from create method");
        }

[HttpGet]
public IActionResult GetUsers()
{
    var getall =_userContext.users.ToList();
     return Ok(getall);
}

// [HttpPost("SendEmail")]
// public IActionResult SendEmail()
// {
//     string emailBody = string.Format(
//               @"Mr/Ms. , <br/> Thank you for registering to ABC.
//               Please <a href='localhost:5490/?token_number=' target='_blank'> click here<a/> to verify and activate your account.
//               <br>Your account will not be activated until your email address is confirmed.<br><br>"
              
//               );

//    //string msg = SendSmtpEmail("abdullahshaah6@gmail.com", "ABC Account Activation", emailBody);
//    string msg = SendEmail("abdullahshahjee7@gmail.com");
//      return Ok(msg);
// }
// public string SendSmtpEmail(string sentTo, string mailSubject, string mailBody)
// {
//      string from = "nexawo.noreply@gmail.com";
//      string pass = "nztovrhnhytfhtlv";
//      string smtp = "smtp.gmail.com";
//      int port = 465 ;
//      MailMessage mail = new MailMessage(from, sentTo);
//      using (System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient())
//      {
//          client.Port = port;
//          client.DeliveryMethod = SmtpDeliveryMethod.Network;
//          client.UseDefaultCredentials = false;
//          client.Credentials = new System.Net.NetworkCredential(from, pass);
//          client.EnableSsl = true;
//          client.Host = smtp;
//          mail.Subject = mailSubject;
//          mail.Body = mailBody;
//          mail.IsBodyHtml = true;
//          try
//          {
//              client.Send(mail);
//              return "success";
//          }
//          catch (Exception ex)
//          {

//              return ex.Message;
//          }

//      }


// }
// public string SendEmail(string emailTo)
//  {
//   string from = "nexawo.noreply@gmail.com";
//      string pass = "nztovrhnhytfhtlv";
//      string smtp = "smtp.gmail.com";
//      int port = 465 ;
   
//    string result = null;
//    try
//    {
//        SmtpClient client = new SmtpClient();
//        client.EnableSsl = true;
//        client.Port = port;
//        client.Host = smtp;

//        client.Timeout = 30000;
//        client.DeliveryMethod = SmtpDeliveryMethod.Network;
//        client.Credentials = new System.Net.NetworkCredential(from, pass);
//        client.UseDefaultCredentials = false;

//        MailMessage message = new MailMessage(from, emailTo);
//       // message.From = new MailAddress(from);
//        message.Subject = "Enter code";
//        message.Body = string.Format(
//            @"<p>Following are your login details</p>
//            <p><strong>Two Factor Authentication</strong><strong>:&nbsp;</strong></p>"
//            );

//        //message.To.Add(emailTo);

//        message.IsBodyHtml = true;
//        message.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
//        client.Send(message);
//    }
//    catch (Exception ex)
//    {
//        result = ex.Message;
//    }
//    return result;
// }


//Mailkit code start


// [HttpPost("SendingEmail")]
// public IActionResult SendingEmail()
// {
//      _emailService.Send("abdullahshaah6@gmail.com", "Test Email Subject", "<h1>Example HTML Message Body</h1>" , "nexawo.noreply@gmail.com");
//      return Ok("dummy");
// }





//Mailkit code ended




// [HttpDelete("{id}")]
// public IActionResult Delete(int id)
// {
//     var del = _userContext.users.Where(n => n.UserID == id).FirstOrDefault();
//         _userContext.users.Remove(del);
//             _userContext.SaveChanges();
//     return Ok("Success from create method");
// }


[AllowAnonymous]
[HttpPost("LoginUser")]
public IActionResult Login(Login user)
{
    var userAvailable = _userContext.users.Where(u => u.Email == user.Email && u.Pwd == user.Pwd).FirstOrDefault();
        if(userAvailable != null)
        {
            return Ok(new JwtService(_config).GenerateToken(
                userAvailable.UserID.ToString(),
                userAvailable.FirstName,
                userAvailable.LastName,
                userAvailable.Email,
                userAvailable.Mobile,
                userAvailable.Gender
            ));
        }
    return Ok("Failure");
}






[HttpPost]
        public IActionResult CreateProduct(Products product)
        {
            _userContext.products.Add(product);
            _userContext.SaveChanges();
            return Ok("Success from create method");
        }

    } 
}