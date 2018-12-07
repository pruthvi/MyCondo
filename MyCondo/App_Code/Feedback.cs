using System;

namespace MyCondo
{
    internal class Feedback
    {
        private string message;
        private int userId;

        public Feedback()
        {

        }

        public string Message { get => message; set => message = value; }

        public int UserId { get => userId; set => userId = value; }

    }
}