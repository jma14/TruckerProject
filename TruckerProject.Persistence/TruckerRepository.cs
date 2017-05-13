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
            truckerDTO.TruckerID = db.Truckers.Count() == 0 ? 1 : db.Truckers.OrderByDescending(p => p.TruckerID).FirstOrDefault().TruckerID + 1;
            List<License> dbLicenses = db.Licenses.ToList();
            var dbTrucker = convertToDb(truckerDTO, dbLicenses);
            db.Truckers.Add(dbTrucker);
            db.SaveChanges();
        }

        private static Trucker convertToDb(TruckerDTO truckerDTO, List<License> dbLicenses)
        {
            var dbTrucker = new Trucker();
            dbTrucker.TruckerID = truckerDTO.TruckerID;
            dbTrucker.FirstName = truckerDTO.FirstName;
            dbTrucker.LastName = truckerDTO.LastName;
            dbTrucker.Address = truckerDTO.Address;
            dbTrucker.City = truckerDTO.City;
            dbTrucker.State = truckerDTO.State;
            dbTrucker.Zip = truckerDTO.Zip;
            dbTrucker.LicenseNumber = truckerDTO.LicenseNumber;
            dbTrucker.ExpirationDate = truckerDTO.ExpirationDate;
            foreach (var license in truckerDTO.Licenses)
            {
                dbTrucker.Licenses.Add(dbLicenses.Where(p => p.LicenseType == license.LicenseType).FirstOrDefault());
            }
            return dbTrucker;
        }

        public static List<DTO.TruckerDTO> GetTruckers()
        {
            var db = new TruckerProjectDBEntities();
            var dbTruckers = db.Truckers.ToList();
            return convertToDTO(dbTruckers);
        }

        private static List<DTO.TruckerDTO> convertToDTO(List<Trucker> truckers)
        {
            var truckersDTO = new List<DTO.TruckerDTO>();

            foreach (var trucker in truckers)
            {
                var truckerDTO = new DTO.TruckerDTO();
                truckerDTO.TruckerID = trucker.TruckerID;
                truckerDTO.FirstName = trucker.FirstName;
                truckerDTO.LastName = trucker.LastName;
                truckerDTO.Address = trucker.Address;
                truckerDTO.City = trucker.City;
                truckerDTO.State = trucker.State;
                truckerDTO.Zip = trucker.Zip;
                truckerDTO.LicenseNumber = trucker.LicenseNumber;
                truckerDTO.ExpirationDate = trucker.ExpirationDate;

                truckersDTO.Add(truckerDTO);
            }

            return truckersDTO;
        }

        private static DTO.TruckerDTO convertToDTO(Trucker trucker)
        {

            var truckerDTO = new DTO.TruckerDTO();
            truckerDTO.TruckerID = trucker.TruckerID;
            truckerDTO.FirstName = trucker.FirstName;
            truckerDTO.LastName = trucker.LastName;
            truckerDTO.Address = trucker.Address;
            truckerDTO.City = trucker.City;
            truckerDTO.State = trucker.State;
            truckerDTO.Zip = trucker.Zip;
            truckerDTO.LicenseNumber = trucker.LicenseNumber;
            truckerDTO.ExpirationDate = trucker.ExpirationDate;

            return truckerDTO;
        }
        public static DTO.TruckerDTO EditTrucker(int truckerID)
        {
            var db = new TruckerProjectDBEntities();
            var trucker = db.Truckers.FirstOrDefault(p => p.TruckerID == truckerID);
            return convertToDTO(trucker);
        }

        public static void UpdateTrucker(DTO.TruckerDTO updatedTrucker)
        {
            /*
            var db = new TruckerProjectDBEntities();
            var trucker = db.Truckers.FirstOrDefault(p => p.TruckerID == updatedTrucker.TruckerID);
            db.Truckers.Remove(trucker);
            db.SaveChanges();
            */
            DeleteTrucker(updatedTrucker.TruckerID);
            CreateTrucker(updatedTrucker);
        }

        public static void DeleteTrucker(int truckerID)
        {
            var db = new TruckerProjectDBEntities();
            var trucker = db.Truckers.FirstOrDefault(p => p.TruckerID == truckerID);
            db.Truckers.Remove(trucker);
            db.SaveChanges();
        }
    }
}
