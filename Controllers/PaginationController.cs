
// using Microsoft.AspNetCore.Mvc;
// using PracticeCrud.Models;
// using PracticeCrud.NewModels;

// namespace Pagination.Controllers
// {
//     public class PaginationController : ApiController
//     {
//         public readonly CompanyContext _db;

//         public PaginationController(CompanyContext db)
//         {
//             _db = db;
//         }

//         [HttpGet]
//         public object getAllCompanies(int pageNo, int pageSize, string sortOrder)
//         {

//             var oMyString = new ObjectParameter("totalCount", typeof(int));

//             var companyDetails = _db.Usp_GetAllCompanies(pageNo, pageSize, sortOrder).ToList();
//             return companyDetails;
//         }

//         [HttpGet]
//         public object getAllCompaniesCount()
//         {

//             var companyDetailsCount = _db.Usp_getAllCompaniesCount().SingleOrDefault();
//             return companyDetailsCount;
//         }
//     }
// }