using DouyuWPF.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DouyuWPF.Entity
{
    public class Room
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Icon { get; set; }
        public string Count { get; set; }
        public DelegateCommand ClickRoomToWebCommand { get; set; }
    }
}
