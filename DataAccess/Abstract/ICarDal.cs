using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using DataAccess.Abstract;

namespace DataAccess.Abstract
{
    public interface ICarDal: IEntityRepository<Car>
    {
        //List<Car> GetById(int brandId);
        //List<Car> GetAll();
        //void Add(Car car);
        //void Update(Car car);
        //void Delete(Car car);
    }
}
