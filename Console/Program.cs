using Business.Concrete;
using DataAccess.Concrete.InMemory;
using System;
using System.Text;

namespace ConsoleUI
{
    class Program
    {
        static void Main(string[] args)
        {
            CarManager carManager = new CarManager(new InMemoryCarDal());

            foreach (var car in carManager.GetAll())
            {
                Console.WriteLine(car.Id + "  " + car.Description);
            }
        }
    }
}
