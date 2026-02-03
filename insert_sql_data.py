import pandas as pd
from sqlalchemy import create_engine


df = pd.read_csv(r"D:\working datasets\Social Media User Behavior\social_media_user_analysis_clean.csv")


engine = create_engine(
    "mysql+mysqlconnector://root:root@localhost:3306/analysis",
    echo=False
)

df.to_sql(
    name="social_media_user_analytics",
    con=engine,
    if_exists="replace",
    index=False,
    chunksize=10_000,
    method=None
)

print("Data inserted successfully")
