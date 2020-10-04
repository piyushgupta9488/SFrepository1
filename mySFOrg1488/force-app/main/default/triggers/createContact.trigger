trigger createContact on Account (after insert) 
{
    list<contact> conList = new list<contact>();
    
    for (account Acc:trigger.new)
    {
       contact Con =new contact();
        con.AccountId = Acc.id;
        con.LastName = Acc.Name;
        conList.add(con);
    }
    if (!conList.isEmpty())
    {
        insert conList;
    }
}