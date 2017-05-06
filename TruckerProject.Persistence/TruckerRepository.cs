using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TruckerProject.DTO;

namespace TruckerProject.Persistence
{
    public class TruckerRepository
    {
        public static void CreateTrucker(TruckerDTO truckerDTO)
        {
            var db = new TruckerProjectDBEntities();
            var dbTrucker = convertToDb(truckerDTO);
            db.Truckers.Add(dbTrucker);
            db.SaveChanges();
        }

        public static Trucker convertToDb(TruckerDTO truckerDTO)
        {
            var dbTrucker = new Trucker();
            dbTrucker.TruckerID = truckerDTO.TruckerID;
            dbTrucker.FirstName = truckerDTO.FirstName;
            dbTrucker.LastName = truckerDTO.LastName;
            dbTrucker.Address = truckerDTO.Address;
            dbTrucker.CityStateZip = truckerDTO.CityStateZip;
            dbTrucker.LicenseNumber = truckerDTO.LicenseNumber;
            dbTrucker.ExpirationDate = truckerDTO.ExpirationDate;
            dbTrucker.ClassA = truckerDTO.ClassA;
            dbTrucker.ClassB = truckerDTO.ClassB;
            dbTrucker.ClassC = truckerDTO.ClassC;

            return dbTrucker;
        }

        public static List<DTO.TruckerDTO> GetTruckers()
        {
            var db = new TruckerProjectDBEntities();
            var dbTruckers = db.Truckers.ToList();
            return convertToDTO(dbTruckers);
        }

        public static List<DTO.TruckerDTO> convertToDTO(List<Trucker> truckers)
        {
            var truckersDTO = new List<DTO.TruckerDTO>();

            foreach (var trucker in truckers)
            {
                var truckerDTO = new DTO.TruckerDTO();
                truckerDTO.TruckerID = trucker.TruckerID;
                truckerDTO.FirstName = trucker.FirstName;
                truckerDTO.LastName = trucker.LastName;
                truckerDTO.Address = trucker.Address;
                truckerDTO.CityStateZip = trucker.CityStateZip;
                truckerDTO.LicenseNumber = trucker.LicenseNumber;
                truckerDTO.ExpirationDate = trucker.ExpirationDate;
                truckerDTO.ClassA = trucker.ClassA;
                truckerDTO.ClassB = trucker.ClassB;
                truckerDTO.ClassC = trucker.ClassC;

                truckersDTO.Add(truckerDTO);
            }

            return truckersDTO;
        }
    }
}
