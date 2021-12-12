using SuperChat.Core;
using SuperChat.MVVM.Model;
using System;
using System.Collections.ObjectModel;

namespace SuperChat.MVVM.ViewModel
{
    class ScreenSaverViewModel : ObservableObject
    {
        public RelayCommand SetName { get; set; }

        private string _message;
        public string Message
        {
            get { return _message; }
            set
            {
                _message = value;
                OnPropertyChanged();
                //SendMessage();
            }
        }

        public ScreenSaverViewModel()
        {
            SetName = new RelayCommand(o =>
            {
                string Name = Message;
                new MainWindow(Name).Show();
                App.Current.MainWindow.Close();

                Message = "";
            });
        }
    }
}
