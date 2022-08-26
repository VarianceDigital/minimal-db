from inflection import parameterize
from flask import Markup

def slugify(myvar):
    return parameterize(myvar)[:80].rstrip('-')

#This data would better go in a database...
errorDict = { 
    "Err1": "ERROR 1: watch out for error n.1!",
    "Err2": "ERROR 2: watch out for error n.2!",
    "Err9": "ERROR 9: watch out for error n.9!"
}

def displayError(errNum):
    key = "Err"+str(errNum)
    result = errorDict[key]
    return result


msgDict = { 
    "Msg1": "<p>This is a <b>nice</b> message, the first of the list</p>",
    "Msg2": "<p>This is an even <b>nicer</b> message.</p>",
    "Msg3": "<p>Access key is invalid!</p>",
    "Msg4": "<p>Access key accepted.</br>Demo mode off!</p>",
    "Msg5": "<p>Demo mode back on!</p>",
    "Msg6": "<p>Please turn demo mode OFF to delete a picture</p>",
    "Msg7": "<p>Please turn demo mode OFF to upload a picture</p>",
    "Msg8": "<p>No image id sent to server</p>",
    "Msg9": "<p>Could not delete picuter</p>",
    "Msg10": "<p>Image deleted!</p>"
}

def displayMessage(msgKey):
    #THE DECORATOR IS NEEDED TO DISABLE CACHING OF JINJA CALLS!!!
    try:
        result = Markup(msgDict[msgKey])
        return result
    except:
        return "-"
