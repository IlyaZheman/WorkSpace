using SuperChat.Core;
using SuperChat.MVVM.Model;
using System;
using System.Collections.ObjectModel;

namespace SuperChat.MVVM.ViewModel
{
    class MainViewModel : ObservableObject
    {
        public ObservableCollection<ContactModel> Contacts { get; set; }
        public RelayCommand SendCommand { get; set; }

        // Выбираем контакт, которому будем отправлять сообщение 
        private ContactModel _selectedContact;
        public ContactModel SelectedContact
        {
            get { return _selectedContact; }
            set
            {
                _selectedContact = value;
                OnPropertyChanged();
            }
        }

        // структура сообщений 
        private string _message;
        public string Message
        {
            get { return _message; }
            set
            {
                _message = value;
                OnPropertyChanged();
                SendMessage();
            }
        }

        // отправка сообщений
        void SendMessage()
        {
            SendCommand = new RelayCommand(o =>
            {
                Contacts[ContactIndex()].Messages.Add(new MessageModel
                {
                    UserName = "Илья Жеман",
                    UserNameColor = "#409aff",
                    ImageSource = "https://sun9-51.userapi.com/impf/c855636/v855636494/10fb43/Bb1as64Juvc.jpg?size=1728x2160&quality=96&sign=45270f844aeb40b4ceebea13fb93ef30&type=album",
                    Message = Message,
                    Time = DateTime.Now,
                    IsNativeOrigin = false,
                    FirstMessage = true
                });

                Message = "";
            });
        }

        // получение индекса контакта из списка
        int ContactIndex()
        {
            string id = SelectedContact.Id.ToString("D");
            int ctIndex = 0;

            foreach (ContactModel i in Contacts)
            {
                if (i.Id.ToString("D") == id)
                {
                    ctIndex = Contacts.IndexOf(i);
                }
            }

            return ctIndex;
        }

        public MainViewModel()
        {
            // создаем список контактов
            Contacts = new ObservableCollection<ContactModel>();

            // добавляем участников списка
            for (int i = 0; i < 5; i++)
            {
                Contacts.Add(new ContactModel
                {
                    Id = Guid.NewGuid(),
                    UserName = $"Лиза Шарова {i}",
                    ImageSource = "https://sun9-15.userapi.com/impf/c855724/v855724020/15a05a/3qN9H9nrdX4.jpg?size=600x600&quality=96&sign=42144a248641a401beccc1a54d586f52&type=album",
                    Messages = new ObservableCollection<MessageModel>(),
                });
            }

            SendMessage();

            // тестируем прием сообщений 
            for (int i = 0; i < 5; i++)
            {
                Contacts[i].Messages.Add(new MessageModel
                {
                    UserName = "Лиза Шарова",
                    UserNameColor = "#409aff",
                    ImageSource = "https://sun9-15.userapi.com/impf/c855724/v855724020/15a05a/3qN9H9nrdX4.jpg?size=600x600&quality=96&sign=42144a248641a401beccc1a54d586f52&type=album",
                    Message = "Test " + i,
                    Time = DateTime.Now,
                    IsNativeOrigin = false,
                    FirstMessage = true,

                });
            }
        }
    }
}
