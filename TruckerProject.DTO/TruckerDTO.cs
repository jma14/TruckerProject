using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruckerProject.DTO
{
    public class TruckerDTO
    {
        public int TruckerID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string LicenseNumber { get; set; }
        public DateTime ExpirationDate { get; set; }
        public virtual List<LicenseDTO> Licenses { get; set; }

        public static implicit operator TruckerDTO(string v)
        {
            throw new NotImplementedException();
        }
    }
}
