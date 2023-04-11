import sqlite3


class ForumDatabaseComunicator:

    def __init__(self, name):
        self.database_name = name
        self.database_connection = sqlite3.connect(self.database_name)
        self.cursor_object = self.database_connection.cursor()

    def CreatAccount(self, mail, account, password):
            result_table = self.cursor_object.execute('''
                SELECT Mail, Account
                FROM AccountData
                WHERE Mail = %s && Account = %s
            ''' %(mail, account))
            print(type(result_table))

test_dbc = ForumDatabaseComunicator()