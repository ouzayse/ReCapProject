using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccess.Concrete.InMemory
{
    public class InMemoryCarDal //:ICarDal
    {
        //List<Car> _cars;
        //public InMemoryCarDal()
        //{
        //    _cars = new List<Car>
        //    {
        //        new Car{Id=1, CategoryId=1, BrandId=6, ColorId=123, DailyPrice=300000, Description="Fiat Clio 2020 model", ModelYear=2020},
        //        new Car{Id=2, CategoryId=1, BrandId=3, ColorId=111, DailyPrice=700000, Description="Toyota Auris 2021 model ", ModelYear=2021},
        //        new Car{Id=3, CategoryId=2, BrandId=2, ColorId=333, DailyPrice=200000, Description="Ford Focus 2019 model", ModelYear=2019},
        //        new Car{Id=4, CategoryId=2, BrandId=3, ColorId=222, DailyPrice=500000, Description="Toyota Hilux 2020 model ", ModelYear=2020},
        //        new Car{Id=5, CategoryId=3, BrandId=6, ColorId=777, DailyPrice=800000, Description="Fiat Fiorino 2021 model ", ModelYear=2021},
        //        new Car{Id=6, CategoryId=3, BrandId=4, ColorId=321, DailyPrice=450000, Description="Hyundai i20 2020 model ", ModelYear=2020},
        //    };
        //}
        //public void Add(Car car)
        //{
        //    _cars.Add(car);
        //}

        //public void Delete(Car car)
        //{
        //    Car carToDelete = _cars.SingleOrDefault(c => c.Id == car.Id);
        //    _cars.Remove(carToDelete);
        //}

        //public List<Car> GetAll()
        //{
        //    return _cars;
        //}

        //public List<Car> GetById(int brandId)
        //{
        //    return _cars.Where(c => c.BrandId == brandId).ToList();
        //}

        //public void Update(Car car)
        //{
        //    Car carToUpdate = _cars.SingleOrDefault(c => c.Id == car.Id);
        //    carToUpdate.BrandId = car.BrandId;
        //    carToUpdate.CategoryId = car.CategoryId;
        //    carToUpdate.ColorId = car.ColorId;
        //    carToUpdate.ModelYear = car.ModelYear;
        //    carToUpdate.DailyPrice = car.DailyPrice;
        //    carToUpdate.Description = car.Description;
            
        //}
    }
}
