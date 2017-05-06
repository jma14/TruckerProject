using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruckerProject.DTO
{
    public class TruckerDTO
    {
        public Guid TruckerID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string CityStateZip { get; set; }
        public string LicenseNumber { get; set; }
        public DateTime ExpirationDate { get; set; }
        public bool ClassA { get; set; }
        public bool ClassB { get; set; }
        public bool ClassC { get; set; }
    }
}
