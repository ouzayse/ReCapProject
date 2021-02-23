using Business.Concrete;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.InMemory;
using Entities.Concrete;
using System;
using System.Text;

namespace ConsoleUI
{
    public class Program
    {
        static void Main(string[] args)
        {
                CarTest();
            //    BrandTest();
            //    ColorTest();
            //RentalManager rentalManager = new RentalManager(new EfRentalDal());
            //var result = rentalManager.Add(new Rental { RentalId = 6, Id = 1, CustomerId = 3, RentDate = new DateTime(2021,03,01), ReturnDate = new DateTime(2021, 02, 12) });
            //Console.WriteLine(result.Message);
        }
        
        private static void CarAdd(CarManager carManager)
        {
            
        }

        private static void ColorTest()
        {
            ColorManager colorManager = new ColorManager(new EfColorDal());
            var result = colorManager.GetAll();
            if (result.Success==true)
            {
                foreach (var color in result.Data)
                {
                    Console.WriteLine(color.ColorName);
                }
            }
            else
            {
                Console.WriteLine(result.Message);
            }
        }

        private static void BrandTest()
        {
            BrandManager brandManager = new BrandManager(new EfBrandDal());
            var result = brandManager.GetAll();
            if (result.Success==true)
            {
                foreach (var brand in result.Data)
                {
                    Console.WriteLine(brand.BrandName);
                }
            }
            else
            {
                Console.WriteLine(result.Message);
            }
        }

        private static void CarTest()
        {
            CarManager carManager = new CarManager(new EfCarDal());

            var result = carManager.GetAll();
            if (result.Success==true)
            {
                foreach (var join in result.Data)
                {
                    Console.WriteLine(join.Id + "/" + join.CarName + " /" + join.Descriptions + " /" + join.DailyPrice);
                }
            }//
            else
            {
                Console.WriteLine(result.Message);
            }

        }
    }
}
