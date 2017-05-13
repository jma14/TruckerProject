using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruckerProject.DTO
{
    public class LicenseDTO
    {
        public string LicenseType { get; set; }

        public virtual List<TruckerDTO> Truckers { get; set; }
    }
}
