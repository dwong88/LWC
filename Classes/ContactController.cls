public  class ContactController
{
    @AuraEnabled(cacheable=true)
    public  static List<WrapperClass> displayConRecords()
    {
        List<WrapperClass> wrapperConList=new List<WrapperClass>();
        for(Contact con:[select Id,LastName,Email,Phone from Contact LIMIT 10])
        {

            WrapperClass wrap=new WrapperClass();
            wrap.LastName=con.LastName;
            wrap.Email=con.Email;
            wrap.Phone=con.Phone;
            wrapperConList.add(wrap);
        }
        return wrapperConList;
    }
    public class WrapperClass
    {
        @AuraEnabled
        public String LastName;
        @AuraEnabled
        public String Email;
        @AuraEnabled
        public String Phone;

    }
  }