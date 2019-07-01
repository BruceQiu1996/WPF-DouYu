using DouyuWPF.Commons;
using DouyuWPF.Entity;
using DouyuWPF.Helpers;
using DouyuWPF.UserControls;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace DouyuWPF.ViewModels
{
    public class MainWindowVieModel : ViewModelBase
    {
        private HttpHelper httpHelper = new HttpHelper();
        private readonly string lolUrl = System.Configuration.ConfigurationManager.AppSettings[nameof(lolUrl)];
        public ObservableCollection<Room> roomList;
        public ObservableCollection<Room> RoomList
        {
            get { return this.roomList; }
            set
            {
                if (value != null)
                {
                    this.roomList = value;
                    this.OnPropertyChanged("RoomList");
                }
            }
        }
        public TabControl tab = new TabControl();
        public static IList<TabItem> TabItems = new List<TabItem>();
        //事件
        public DelegateCommand ClickRoomToWebCommand { get; set; }
        public MainWindowVieModel(TabControl TabControl1)
        {
            this.tab = TabControl1;
            RoomList = new ObservableCollection<Room>();
            JObject obj = JObject.Parse(httpHelper.HTTPJsonGet(lolUrl));
            JArray array = (JArray)obj["data"];
            foreach (var item in array)
            {
                RoomList.Add(new Room
                {
                    Name = item["room_name"].ToString(),
                    Icon = item["room_src"].ToString(),
                    Count = item["online"].ToString(),
                    ID = item["room_id"].ToString(),
                    ClickRoomToWebCommand = new DelegateCommand(ClickRoomJumpWeb)
                });
            }
        }
        private void ClickRoomJumpWeb(object obj)
        {
            Room room = (((MouseButtonEventArgs)obj).Source as Image).DataContext as Room;
            if (room == null) return;
            UserControl1 userControl = new UserControl1(@"https://www.douyu.com//"+room.ID);
            TabItem item = new TabItem();
            item.Header = room.Name.Length>10?room.Name.Substring(0,10)+"...":room.Name;
            item.Name = "room"+room.ID;
            item.Content = userControl;
            tab.Items.Add(item);
            item.IsSelected = true;
        }
    }
}
