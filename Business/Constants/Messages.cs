using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Constants
{
    public static class Messages
    {
        public static string CarAdded = "Araba sisteme eklendi.";
        public static string BrandNameInvalid = "Araba marka ismi geçersiz. Minumum 2 karakter olmalıdır.";
        public static string CarDailyPrice = "Araba günlük fiyatı 0'dan büyük olmalıdır!";
        public static string CarDeleted = "Araba sistemden silindi.";
        public static string CarUpdated = "Araba güncellendi.";
        public static string ColorAdded = "Renk sisteme eklendi";
        public static string ColorDeleted = "Renk sistemden silindi.";
        public static string ColorUpdated = "Renk güncellendi.";
        internal static string MaintenanceTime = "Sistem bakımda.";
        internal static string CarListed="Arabalar listelendi.";
    }
}
