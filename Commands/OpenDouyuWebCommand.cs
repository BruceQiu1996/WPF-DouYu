using DouyuWPF.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace DouyuWPF.Commands
{
    public class OpenDouyuWebCommand : ICommand
    {
        public event EventHandler CanExecuteChanged;

        public OpenDouyuWebCommand(MainWindowVieModel mainDatas)
        {

        }
        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            
        }
    }
}
