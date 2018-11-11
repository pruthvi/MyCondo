namespace MyCondo
{
    internal struct Adress
    {
        public string StreetLine1;
        public string StreetLine2;
        public string ZipCode;
        public string State;
        public string City;

        public Adress(string streetNameAndNumber, string line2, string streetcity, string streetState, string streetZipcode)
        {
            StreetLine1 = streetNameAndNumber;
            StreetLine2 = line2;
            ZipCode = streetZipcode;
            State = streetState;
            City = streetcity;
        }
        public override string ToString()
        {
            return string.Format("#" + StreetLine2 + "-" + StreetLine1 + "," + City + "," + State + "," + ZipCode + ",Canada");
        }
    }
}