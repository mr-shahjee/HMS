using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using PracticeCrud.Models;

namespace PracticeCrud.Controllers
{
    [Route("Gad7")]
    [ApiController]
    [EnableCors("AllowOrigin")]
    public class Gad7Controller : Controller
    {
         private readonly IConfiguration _config;
        public readonly UserContext _userContext;
        public Gad7Controller(IConfiguration config, UserContext userContext)
        {
            _config = config;
            _userContext = userContext;
        }

          [HttpPost]
        public IActionResult CreateGad7(Gad7 gad7)
        {
            _userContext.gad7s.Add(gad7);
            _userContext.SaveChanges();
            return Ok("Success from create method");
        }

        [HttpGet]
public IActionResult GetGad7()
{
    var getall =_userContext.gad7s.FromSqlRaw("SelectAllGad7").ToList();
     return Ok(getall);
}

        //[HttpGet]
// public async Task<IActionResult> GetGad7()
// {
//       var pageNumber = new SqlParameter("@pageNumber", 1);
//           var rowsPerPage = new SqlParameter("@rowsPerPage", 10);
//  var searchWord = new SqlParameter("@searchWord", "null");
//     // var pageNumber = 26;
//     // var rowsPerPage = 10;
//     // var searchWord = "null";
//     // var getall =await _userContext.gad7s.FromSqlInterpolated($"spGad7s {pageNumber}, {rowsPerPage}, {searchWord}").ToListAsync();
//     var getall =await _userContext.gad7s.FromSqlRaw("dbo.spGad7s @pageNumber = {0}, @rowsPerPage = {1}, @searchWord = {2}" ,1, 10, null).ToListAsync();
   
//     return Ok(getall);
// }

    }
}