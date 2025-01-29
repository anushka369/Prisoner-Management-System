import mysql.connector

conn = mysql.connector.connect(host = 'localhost', username = 'root', password='true', database='prisoner-db')
my_cursor = conn.cursor()

# FUNCTIONS #
def Password():
  with open ('Password.Txt','w') as F:
    F.write('Password123')


def ViewRecords():
    ViewQuery = "select * from PRISONER"
    my_cursor.execute(ViewQuery)
    R = my_cursor.fetchall()
    for SNO, NAME, CELLNO, CRIME, ADMISSIONDATE, SENTENCEPERIOD, RELEASEDATE, MEDICALDETAILS,FOOD,VISITINGPRIVILEGES in R:
        print(str(SNO), NAME.ljust(19,'_'), str(CELLNO), CRIME, str(ADMISSIONDATE), SENTENCEPERIOD, str(RELEASEDATE), MEDICALDETAILS, FOOD, VISITINGPRIVILEGES)

def SearchRecords():
    Name = input("Name (To Search):")
    SearchQuery = "SELECT * FROM PRISONER WHERE NAME LIKE '%{}%'".format(Name)
    N = my_cursor.execute(SearchQuery)
    R = my_cursor.fetchall()

    if R == None:
        print("Name not found...")
      
    else:
        for c in R:
          print("Found...")
          print("SNo                  :", c[0])
          print("Name                 :", c[1])
          print("CellNo               :", c[2])
          print("Crime                :", c[9])
          print("Admission Date       :", c[3])
          print("Sentence Period      :", c[4])
          print("Release Date         :", c[5])
          print("Medical Details      :", c[6])
          print("Food                 :", c[7])
          print("Visiting Privileges  :", c[8])

def AddRecords():
    NAME = input("Name: ")
    CELLNO = input("Cell No. [integer]: ")
    CRIME = input("Crime Committed: ")
    ADMISSIONDATE = input("Enter Date (YYYY-MM-DD): ")
    SENTENCEPERIOD = input("Sentence in Months [integer]: ")
    MEDICALDETAILS = input("Medical Details: ")
    FOOD = input("Preference / Allergies:")
    VISITINGPRIVILEGES = input("Yes / No:")

    ADDQUERY = "INSERT INTO PRISONER (NAME, CELLNO, CRIME, ADMISSIONDATE, SENTENCEPERIOD, MEDICALDETAILS, FOOD, VISITINGPRIVILEGES) VALUES ('"+ NAME +"',"+CELLNO+",'"+CRIME+"','"+ADMISSIONDATE+"',"+SENTENCEPERIOD+",'"+MEDICALDETAILS+"','"+FOOD+"','"+VISITINGPRIVILEGES+"')"
    UPDATEQUERY = "UPDATE PRISONER SET RELEASEDATE = ADDDATE(ADMISSIONDATE, INTERVAL SENTENCEPERIOD MONTH)"
    my_cursor.execute(ADDQUERY)
    my_cursor.execute(UPDATEQUERY)
    conn.commit()

def DeleteRecords():
    Name = input("Name (To Search):")
    DelQuery = "DELETE FROM PRISONER WHERE NAME LIKE '%{}%'".format(Name)
    my_cursor.execute(DelQuery)

def ModifyRecords():
    Name = input("Name(To Search):")
    SearchQuery = "SELECT * FROM PRISONER WHERE NAME LIKE '%{}%'".format(Name)
    N = my_cursor.execute(SearchQuery)
    R = my_cursor.fetchall()

    if R == None:
        print("Name not found...")
      
    else:
        for c in R:
          print("Found...")
          print("SNo                  :", c[0])
          print("Name                 :", c[1])
          print("CellNo               :", c[2])
          print("Crime                :", c[9])
          print("Admission Date       :", c[3])
          print("Sentence Period      :", c[4])
          print("Release Date         :", c[5])
          print("Medical Details      :", c[6])
          print("Food                 :", c[7])
          print("Visiting Privileges  :", c[8])
    
    P = input("Field to change: ")
  
    if P in ["NAME", 'name', 'Name']:
        Change = input('New Name: ')
        UpdateQuery = "UPDATE PRISONER SET NAME = '"+Change+"' WHERE NAME = '"+Name+"'"
        my_cursor.execute(UpdateQuery)
        conn.commit()

    elif P in ["CellNo", 'CELLNO', 'cellno']:
        Change = input('New Cell no.: ')
        UpdateQuery = "UPDATE PRISONER SET CELLNO = '"+Change+"' WHERE NAME = '"+Name+"'"
        my_cursor.execute(UpdateQuery)
        conn.commit()

    elif P in ["CRIME", 'Crime', 'crime']:
        Change = input('New Crime: ')
        UpdateQuery = "UPDATE PRISONER SET CRIME = '"+Change+"' WHERE NAME = '"+Name+"'"
        my_cursor.execute(UpdateQuery)
        conn.commit()

    elif P in ["SENTENCE PERIOD", 'Sentence Period', 'sentence period']:
        Change = input('New Sentence Period(In Months): ')
        UpdateQuery = "UPDATE PRISONER SET SENTENCEPERIOD ='"+Change+"' WHERE NAME ='"+Name+"'"
        my_cursor.execute(UpdateQuery)
        conn.commit()
        up = "UPDATE PRISONER SET RELEASEDATE = ADDDATE(ADMISSIONDATE, INTERVAL SENTENCEPERIOD MONTH)"
        my_cursor.execute(up)
        conn.commit()

    elif P in ["Medical Details", 'MEDICAL DETAILS', 'medical details']:
        Change = input('New Medical Details:')
        UpdateQuery = "UPDATE PRISONER SET MEDICALDETAILS = '"+Change+"'WHERE NAME = '"+Name+"'"
        my_cursor.execute(UpdateQuery)
        conn.commit()

    elif P in ["FOOD",'food','Food']:
        Change = input('New Food Preference:')
        UpdateQuery = "UPDATE PRISONER SET FOOD = '"+Change+"' WHERE NAME = '"+Name+"'"
        my_cursor.execute(UpdateQuery)
        conn.commit()

    elif P in ['VISITING PRIVILEGES','visiting privileges','Visiting Priveleges']:
        Change = input('New Privilege:')
        UpdateQuery = "UPDATE PRISONER SET VISITINGPRIVELEGES = '"+Change+"' WHERE NAME = '"+Name+"'"
        my_cursor.execute(UpdateQuery)
        conn.commit()

with open('Password.Txt','r') as F:
    L = F.readlines()

USER = input("A: Admin/ U: User:")
while True:
  if USER in ['A', 'a']:
    ACCESS = input("1: Enter Password, 2: Change Password, 3: Quit:")
    
    if ACCESS == '1':
        with open ('Password.txt','r') as F:
             L = F.readlines()
             PASSWORD = input("Enter Password:")
          
             if PASSWORD in L[0]:
                 print("ACCESS GRANTED")
                 MENU = input("V: View, A: Add, M: Modify, D: Delete, Q: Quit: ")
               
                 if MENU in ['V', 'v']:
                     ViewRecords()
                   
                 elif MENU in ['A', 'a']:
                     AddRecords()
                   
                 elif MENU in ['M', 'm']:
                     ModifyRecords()
                   
                 elif MENU in ['D', 'd']:
                     DeleteRecords()
                   
                 elif MENU in ['Q', 'q']:
                     break
                   
                 else:
                     print('Invalid Option!')
             else:
                break   
                
    elif ACCESS == "2":
        PASSWORD = input("Enter Password: ")
      
        if PASSWORD == L[0]:
             NEWP = input("New Password: ")
             with open ('Password.Txt','w') as F:
                 F.seek(0)
                 F.write(NEWP)
                 print("Password Successfully Changed.")
                 break
               
        else:
             break
    
    elif ACCESS == "3":
        break 

  elif USER in ['u', 'U']:
    MENU = input('V: View, S: Search, Q: Quit: ')
    
    if MENU in ['V', 'v']:
        ViewRecords()
      
    elif MENU in ['S', 's']:
        SearchRecords()
      
    elif MENU in ['Q', 'q']:
        break
      
    else:
        print('Invalid Option!')

conn.commit()
conn.close()
