import psycopg2

def openConnection():
    conn = None
    try:
        conn = psycopg2.connect(
            database = "postgres",
            user = "postgres",
            password = "fxxxysh7878",
            host = "localhost",
            port = 5432
        )
    except:
        print(psycopg2.Error)
    
    return conn

def test():
    conn = openConnection()
    
    try:
        curs = conn.cursor()
        curs.execute("SELECT * FROM Customer;")
        result = curs.fetchall()
        curs.close()
    except:
        print(psycopg2.Error)
        curs.close()

    conn.close()

    return result