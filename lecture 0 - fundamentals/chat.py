import os
from openai import OpenAI
from dotenv import load_dotenv

load_dotenv()
SECRET_KEY = os.getenv("SECRET_KEY")

client = OpenAI(api_key=SECRET_KEY)

user_prompt = input("Prompt: ")
system_prompt = "Limit your answer to one sentence"

response = client.responses.create(
    input=user_prompt,
    instructions=system_prompt,
    model="chatgpt-3.5"
)

print(response.output_text)