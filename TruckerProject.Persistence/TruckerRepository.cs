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

        private static Trucker convertToDb(TruckerDTO truckerDTO)
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
                truckerDTO.ClassA = trucker.ClassA;
                truckerDTO.ClassB = trucker.ClassB;
                truckerDTO.ClassC = trucker.ClassC;

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
            truckerDTO.ClassA = trucker.ClassA;
            truckerDTO.ClassB = trucker.ClassB;
            truckerDTO.ClassC = trucker.ClassC;
            return truckerDTO;
        }
        public static DTO.TruckerDTO EditTrucker(Guid truckerID)
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

        public static void DeleteTrucker(Guid truckerID)
        {
            var db = new TruckerProjectDBEntities();
            var trucker = db.Truckers.FirstOrDefault(p => p.TruckerID == truckerID);
            db.Truckers.Remove(trucker);
            db.SaveChanges();
        }
    }
}
