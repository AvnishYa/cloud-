using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebAPIwithDB.Models;
namespace WebAPIwithDB.Controllers
{
 public class EmpController : ApiController
 {
 MSC1Entities db = new MSC1Entities();
 // GET: api/Emp
 public IEnumerable<Emp> Get()
 {
 return (db.Emps.ToList());
 }
 // GET: api/Emp/5
 public Emp Get(int id)
 {
 return (db.Emps.Find(id));
 }
 // POST: api/Emp
 public String Post([FromBody]Emp et)
 {
 db.Emps.Add(et);
 db.SaveChanges();
 return "Data Added";
 }
 // DELETE: api/Emp/5
 public String Delete(int id)
 {
 Emp et = db.Emps.Find(id);
 db.Emps.Remove(et);
 db.SaveChanges();
 return "Data Deleted";
 }
 }
}
