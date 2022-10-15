"""
Contains configurations loaded from .env file.
"""

import os

# pylint: disable=import-error
from dotenv import load_dotenv

home_folder = os.environ["HOME"]


env_path = os.path.dirname(os.path.realpath(__file__)) + "/.env"
load_dotenv(dotenv_path=env_path)


session_plist = os.getenv("SESSION_PLIST")
SPOT = os.getenv("SPOT")

if session_plist is not None:
    session_filepath = session_plist + ".plist"
as_filepath = os.getenv("AS_FILEPATH")


def mai():
    """
    test
    """
    print("Hello world")
    print(home_folder)
