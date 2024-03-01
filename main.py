# importing the required libraries and functions 
import random
import mysql.connector 
from telegram import Update
from telegram.ext import Updater, CommandHandler, MessageHandler, CallbackContext, Filters

the_updater = Updater("7023554726:AAHC5hbpxBDnGJWFjqBG3f4-X7s7FlEpk_Y", use_context=True)

# connecting with MySQL
db_config = {
    'host': '127.0.0.1',
    'user': 'root',
    'password': '18062003myspideR',
    'database': 'drevokvestov',
}
  
  
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()


def the_start(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        "Доброго времени суток! Работаем."  
        )  
  
def the_help(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        """Доступные команды :  
        /getkvests - получить квесты для каждого ранга  
        /addkvest - добавить новый квест  
        /deletekvest - удалить квест  
        /changekvest - внести изменения в существующий квест""")  
    
def getKvestsOfEachRang(update: Update, context: CallbackContext):  
    ranks = [1,2]

    for rank in ranks:
        cursor.execute("SELECT * FROM kvest WHERE idKvest = %s", (rank,))
        results = cursor.fetchall()

        random_kvests = random.sample(results, min(6, len(results)))

        for kvest in random_kvests:
            kvest_name = kvest.get("nameOfKvest")
            update.message.reply_text(f"Ранг {rank}: {kvest_name}")  

def addNewKvest(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        "Новый квест"  
        )  

def deleteKvest(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        "удалить квест"  
        )  
    
def changeKvest(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        "Изменение квеста"  
        )  
  
def unknownCommmand(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        "Извините, \"%s\" - несуществующая команда" % update.message.text  
        )  
  
def unknownText(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        "К сожалению я не могу понять ваше сообщение \"%s\"" % update.message.text  
        ) 
    
    
# adding the handler to handle the messages and commands  
the_updater.dispatcher.add_handler(CommandHandler('start', the_start))  
the_updater.dispatcher.add_handler(CommandHandler('help', the_help))  
the_updater.dispatcher.add_handler(CommandHandler('getkvests', getKvestsOfEachRang))  
the_updater.dispatcher.add_handler(CommandHandler('addkvest', addNewKvest))  
the_updater.dispatcher.add_handler(CommandHandler('deletekvest', deleteKvest))  
the_updater.dispatcher.add_handler(CommandHandler('changekvest', changeKvest))  
the_updater.dispatcher.add_handler(MessageHandler(Filters.text, unknownCommmand))  
 # Filtering out unknown commands  
the_updater.dispatcher.add_handler(MessageHandler(Filters.command, unknownCommmand))  
# Filtering out unknown messages  
the_updater.dispatcher.add_handler(MessageHandler(Filters.text, unknownText))  


# running the bot  
the_updater.start_polling()  