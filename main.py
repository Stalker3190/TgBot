# importing the required libraries and functions  
from telegram import Update
from telegram.ext import Updater, CommandHandler, MessageHandler, CallbackContext, Filters

the_updater = Updater("7023554726:AAHC5hbpxBDnGJWFjqBG3f4-X7s7FlEpk_Y", use_context=True)
  
def the_start(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        "Здравствуй! Здесь ты можешь получить информацию о квестах клуба ролевого фехтования \"Своё дело\""  
        )  
  
def the_help(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        """Доступные команды :  
        /getkvests - получить квесты для каждого ранга  
        /addkvest - добавить новый квест  
        /deletekvest - удалить квест  
        /changekvest - внести изменения в существующий квест""")  
    
def getKvestsOfEachRang(update: Update, context: CallbackContext):  
    update.message.reply_text(  
        "6 квестов"  
        )  

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