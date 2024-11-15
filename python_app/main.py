import psycopg2
import os

def get_min_max_age():
    conn = psycopg2.connect(
        dbname=os.getenv('POSTGRES_DB'),
        user=os.getenv('POSTGRES_USER'),
        password=os.getenv('POSTGRES_PASSWORD'),
        host=os.getenv('POSTGRES_HOST')
    )
    cur = conn.cursor()
    cur.execute("""
        SELECT MIN(age), MAX(age) FROM test_table
        WHERE char_length(name) < 6;
    """)
    result = cur.fetchone()
    cur.close()
    conn.close()
    return result

if __name__ == "__main__":
    min_age, max_age = get_min_max_age()
    print(f"Minimum age: {min_age}, Maximum age: {max_age}")
