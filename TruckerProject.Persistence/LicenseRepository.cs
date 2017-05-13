using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruckerProject.Persistence
{
    public class LicenseRepository
    {
        public static List<DTO.LicenseDTO> GetLicenses()
        {
            var db = new TruckerProjectDBEntities();
            var dbLicenses = db.Licenses.ToList();
            return convertToDTO(dbLicenses);
        }

        private static List<DTO.LicenseDTO> convertToDTO(List<License> dbLicenses)
        {
            List<DTO.LicenseDTO> licensesDTO = new List<DTO.LicenseDTO>();

            foreach (var dbLicense in dbLicenses)
            {
                licensesDTO.Add(new DTO.LicenseDTO() { LicenseType = dbLicense.LicenseType });
            }

            return licensesDTO;
        }
    }
}
