---
title: Internationalization (i18n)
---

# Internationalization (i18n)

It exists a good guide on internationalization (and externalizing string) at [How to Internationalize your Eclipse Plug-In](https://www.eclipse.org/articles/Article-Internationalization/how2I18n.html).

## Translating the current code

Translating Studio is not an simple task. There are many files to translate :

* messages.properties
* plugin.properties
* help files
* some other semi-random files ;)

## When writing code...

When doing the translation for a specific language please add in any case the messages_\{language\}.properties file of the language to the resource folder, even if it's empty (meaning all translations are taken from the messages.properties file). This will show to other developers, that you've thought about translation but no one was needed.

Notes:

* The message".properties files are located in the src/main/java/** folder (not following maven's philosophy) to be able to use Eclipse' 'Externalize Strings' wizard also later on. Following maven philosophy (*.properties in src/main/resources) the wizard doesn't finds the created properties files anymore.
* To replace placeholders we use Eclipse's NLS.bind function, e.g.

        From messages.properties:
        EditAliasesDialog.TheAliasBegin=The alias "{0}" is invalid.

        Will look like in Java code:
        NLS.bind( Messages.getString( "EditAliasesDialog.TheAliasBegin" ), new String[] { alias } ) );

Hints:

* Using Eclipse' Property-Editor in the 'Properties' view will prevent you from getting into troubles with uncomment characters like e.g. the German 'Umlauts'
