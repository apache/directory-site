---
title: Table widget
---

# Table Widget

It's sometime convenient to use a Table which is associated with a list of optionnally ordered elements, with Add/Edit/Delete actions, and up/down actions if the table is ordered. We have such a widget in _org.org.apache.directory.studio.common.ui.widgets_. 

The Table which will be exposed looks like this :

    +--------------------------------------+
    | Element 1                            | (Add... )
    | Element 2                            | (Edit...)
    |                                      | (Delete )
    +--------------------------------------+

or this, if the elements are ordered

    +--------------------------------------+
    | Element 1                            | (Add... )
    | Element 2                            | (Edit...)
    |                                      | (Delete )
    |                                      | ---------
    |                                      | (Up )
    |                                      | (Down )
    +--------------------------------------+

Optionally, the _Edit_ button might be disabled. 

Clicking on an element will select it, so that one can delete it.

Last, not least, double clicking on an element will edit it, if allowed. In this case, a dedicated Dialog will be opened.

## Ordered table

Here, we are not talking about the fact that the elements are ordered using some comparator, but the fact that the elements have an associated numeral prefix which is used to order the elements, regardeless of the element's content. This is an OpenLDAP extension, where elements are prefixed with a _{n}_ String, where 'n' is a vlaue between 0 to MAX_INTEGER (but it can also be -1, in one specific case).

Bottom line, when a table is declared as Ordered, we use this prefix (which is shown) to order the elements in the tbale, otherwise we use the _compareTo_ method.

## The Element requirements

First of all, we have to focus on the elements. There are some requirements that such Objects much fulfill :

* Either the element can be compared and cloned natively (like an Enum)
* or it has to implement those methods (and the _Cloneable_ and _Comparable_ interfaces):
    * clone
    * hashCode
    * equals
    * compareTo
    * toString


The idea is to be able to find an element in the table using the _equals()_ method, to copy an element, and to order the table content.

## How it works

Basically, we assemble 5 different elements :
    * A Table
    * A listener to handle the actions on the table
    * A Decorator to show the elements in the Table
    * A Dialog to edit the elements, or to add them
    * A Wrapper to hold the elements that are stored in the Table

Let see with some examples

### Table with Add/Edit/Delete, no dialog

Internally, we store the data in a _List<E>_ where *E* is the element's type (_TableWidget_ is a generic class). The only thing you need to do when you want to use this widget is to add this code snippet :


    /** A TableWidget containing some RootDSE elements */
    private TableWidget<StringValueWrapper> rootDseTableWidget; 
    ...
    // Instanciate the TableWidget, associated with a Decorator
    rootDseTableWidget = new TableWidget<StringValueWrapper>( 
        new StringValueDecorator( composite.getShell(), Messages.getString( "OpenLDAPOptionsPage.RootDSE" ) ) );

    // We want an Edit button, but no Up/Down buttons
    rootDseTableWidget.createWidgetWithEdit( composite, toolkit );
    rootDseTableWidget.getControl().setLayoutData( new GridData( SWT.FILL, SWT.NONE, true, false, 2, 1 ) );

    // Associate a listener to this table
    addModifyListener( rootDseTableWidget, rootDseTableListener );


Here, we declare a _TableWidget_, a type of elements (StringValueWrapper), a label provider (used to decorate the elements in the table, if needed).

Last, not least, you create the widget and set its position in your screen.

### The element wrapper

We need to wrap the element in the table in order to expose a few basic functions :
    * clone
    * hashCode
    * equals
    * compareTo
    * toString

Here is an exemple, the _StringValueWrapper_, which wrap a simple value, which is itself a String :

    public class StringValueWrapper implements Cloneable, Comparable<StringValueWrapper>
    {
        /** The value */
        private String value;
        
        /** A flag to tell if the compare should be case sensitive or not */
        private boolean caseSensitive = true;

        /**
         * Creates a new instance of StringValueWrapper.
         *
         * @param value the value
         */
        public StringValueWrapper( String value, boolean caseSensitive )
        {
            this.value = value;
            this.caseSensitive = caseSensitive;
        }

        
        /**
         * @return the value
         */
        public String getValue()
        {
            return value;
        }

        /**
         * @param value the value to set
         */
        public void setValue( String value )
        {
            this.value = value;
        }
        
        
        /**
         * Clone the current object
         */
        public StringValueWrapper clone()
        {
            try
            {
                return (StringValueWrapper)super.clone();
            }
            catch ( CloneNotSupportedException e )
            {
                return null;
            }
        }

        
        /**
         * @see Object#equals(Object)
         */
        public boolean equals( Object that )
        {
            // Quick test
            if ( this == that )
            {
                return true;
            }
            
            if ( that instanceof StringValueWrapper )
            {
                StringValueWrapper thatInstance = (StringValueWrapper)that;
                
                if ( caseSensitive )
                {
                    return value.equals( thatInstance.value );
                }
                else
                {
                    return value.equalsIgnoreCase( thatInstance.value );
                }
            }
            else
            {
                return false;
            }
        }

        
        /**
         * @see Object#hashCode()
         */
        public int hashCode()
        {
            int h = 37;
            
            if ( value != null )
            {
                h += h*17 + value.hashCode();
            }
            
            return h;
        }


        /**
         * @see Comparable#compareTo()
         */
        public int compareTo( StringValueWrapper that )
        {
            if ( that == null )
            {
                return 1;
            }
            
            // Check the value
            if ( Strings.isEmpty( value ) )
            {
                return -1;
            }
            else
            {
                return value.compareToIgnoreCase( that.value );
            }
        }
        
        
        /**
         * @see Object#toString()
         */
        public String toString()
        {
            return value;
        }
    }

Of course, your implementation may be way more complex, but all in all, the API contract is the same.

### The Decorator

This is just a class that extends the _TableDecorator_ abstract class. The _TableDecorator_ extendss the _LabelProvider_ class and implements the _Comparator_ interface.

Here is an example :

    public class StringValueDecorator extends TableDecorator<StringValueWrapper>
    {
        /**
         * Create a new instance of StringValueDecorator
         * @param parentShell The parent Shell
         * @param attributeName the name of the attribute which will contain the value
         */
        public StringValueDecorator( Shell parentShell, String attributeName )
        {
            setDialog( new StringValueDialog( parentShell, attributeName ) );
        }
        

        /**
         * Construct the label for a String.
         * @param element the Element for which we want the value
         * @return a String representation of the element
         */
        public String getText( Object element )
        {
            if ( element instanceof StringValueWrapper )
            {
                return ( ( StringValueWrapper ) element ).getValue();
            }

            return super.getText( element );
        };


        /**
         * Get the image. We have none
         * @param element The element for which we want the image
         * @return The associated Image, or Null
         */
        public Image getImage( Object element )
        {
            return null;
        };

        
        /**
         * {@inheritDoc}
         */
        @Override
        public int compare( StringValueWrapper e1, StringValueWrapper e2 )
        {
            if ( e1 != null )
            {
                if ( e2 == null )
                {
                    return 1;
                }
                else
                {
                    return e1.compareTo( e2 );
                }
            }
            else
            {
                if ( e2 == null )
                {
                    return 0;
                }
                else
                {
                    return 1;
                }
            }
        }
    }

Here, each line in the Table will represent an instance of a _WtringValueWrapper_, with no image. Would you need to add an image before the text, it's just a matter to return this image in the _getImage()_ method.

The constructor takes 2 arguments, the second one will be used in the default Dialog we use to create new String values.

The text is simply constructed using the _toString()_ method, but you may use whatever fits your need.

### The Dialog

This is the complex part, which totally depends on what you want to do. In any case, all the User's Dialog will inherit from the _AddEditDialog_ class, which defines some default actions.

Here is a quick description of this abstract class :

    AddEditDialog<E> extends Dialog

    fields :
        E editedElement  : The element that is edited, if one clicked on the Edit button, or the new element to create for the Add action
        List<E> elements : The list of elements already in the Table
        int selectedPosition : If an element has been selected in the Table, contain its position in the _elements_ list
        boolean isAdd : A flag set to true if the Add button has been clicked.
        boolean okDisabled : A flag to tell if the OK button has to be disabled (for instance, if the data are invalid while creating or editing an element)

    abstract methods :
        void addNewElement() : If the Add button is clicked, we ask the specific Dialog to create an empty instance of Element. This method has to be implemented.
        void initDialog() : read the wrapped element into the dialog's Widgets


    public methods :
        E getEditedElement() : Get the element that is currently being edited.
        int getSelectedPosition() : Get the selected position, if any
        boolean isAdd() : Tells if the element is an addition or an edition
        void setAdd() : This is an Addition
        void setEdit() : This is an Edition
        void setEditedElement( E editedElement ) : Set the element that will be edited. Actually, a new instance is created, that will contain a copy of the edited element.
        void setElements( List<E> elements ) : Keep a copy (not shallow) of the Table content.
        void setSelectedPosition( int selectedPosition ) : Store the selected position

    protected methods :
        Control createButtonBar( Composite parent ) : Used to hide the OK button if needed
        List<E> getElements() : Returns the list of elements
        void initDialog() : Can be overloaded if the Dialog needs to inject an edited element in the Dialog widgets. Optional.

You generally have to implement the _addNewElement()_ and _initDialog()_ methods in your own Dialog class, then implement all the logic to render your dialog.

Here is how you set up your Dialog instance :

    protected Control createDialogArea( Composite parent )
    {
        Composite composite = ( Composite ) super.createDialogArea( parent );
        GridData gd = new GridData( GridData.FILL_BOTH );
        composite.setLayoutData( gd );

        // StringValue Group
        Group stringValueGroup = BaseWidgetUtils.createGroup( parent, null, 1 );
        GridLayout stringValueGroupGridLayout = new GridLayout( 2, false );
        stringValueGroup.setLayout( stringValueGroupGridLayout );
        stringValueGroup.setLayoutData( new GridData( SWT.FILL, SWT.NONE, true, false ) );

        // String Text
        BaseWidgetUtils.createLabel( stringValueGroup, attributeName + ":", 1 );
        stringValue = BaseWidgetUtils.createText( stringValueGroup, "", 1 );
        stringValue.setLayoutData( new GridData( SWT.FILL, SWT.NONE, true, false ) );

        initDialog();
        addListeners();

        applyDialogFont( composite );
        
        return composite;
    }

Here is what you'll get on the screen when an element is selected :

     +---------------------------------------+
     | .-----------------------------------. |
     | | Value  : [                      ] | |
     | '-----------------------------------' |
     |                                       |
     |  (cancel)                       (OK)  |
     +---------------------------------------+

The rendering can be way more complex though.

### Actions

There are two, three, four or five possible actions on this table :
* Add
* Edit (optional)
* Delete
* Up (optional)
* Down (optional)

Let's see how it works.

#### Add action

We will open the Dialog that is provided, and get back a new element which will be exposed in the Table. We also will check that the element is not already present, and if so, no duplicate will be added, except if the table is ordered.

If the table is not ordered, the newly created element will be injected at the right place in the Table : we use the _compareTo_ method to find the position it as to be added in. If the element already exists, it's not added.

If the table is ordered, this is a different story :
* there is a selected element : the newly created element is added _after_ the selection, and all the following elements' prefix are incremented.
* we don't have any selected element : the newly created element is added at the end of the Table, and its prefix is the laset element's prefix, plus one.

#### Delete action

The delete action only works for a selected element.

If the Table is ordered, we will update the prefix of the elements after the deleted one, decrementing all of them.

#### Edit action

The edition of an element will replace the selected element by its new value. 

If the Table is ordered, the prefix will not be changed. Otherwise, the edited element might be moved to another position, depending on where it fits accordingly to the _compareTo_ method.

#### Up Action

The Up action will move one element up in the table. It's only valid for an ordered Table. Basically, it does nothing more than just exchanging two elements, and sapping their prefix.

#### Down action

The Up action will move one element down in the table. It's only valid for an ordered Table. Basically, it does nothing more than just exchanging two elements, and sapping their prefix.
### The listener

Last, not least, we have to add a Listener to react on what happens on the table itself.

It's all about post-modification actions. In our case, we want to update the underlaying OpenLDAP configuration :

    private WidgetModifyListener rootDseTableListener = new WidgetModifyListener()
    {
        public void widgetModified( WidgetModifyEvent e )
        {
            List<String> rootDses = new ArrayList<String>();
            
            for ( StringValueWrapper rootDse : rootDseTableWidget.getElements() )
            {
                rootDses.add( rootDse.getValue() );
            }
            
            getConfiguration().getGlobal().setOlcRootDSE( rootDses );
        }
    };

But it can be hatever fits your need.
## Creating a Table with no edit button, or an Ordered table

We have seen how to create a Table with an Edit button. Creating teh other Table's flawors is easy :

* With edit : TableWidget.createWidgetWithEdit( Composite, FormToolkit );
* No edit : TableWidget.createWidgetNoEdit( Composite, FormToolkit );
* Ordered, No edit : TableWidget.createOrderedWidgetNoEdit( Composite, FormToolkit );
* Ordered, with edit : TableWidget.createOrderedWidgetWithEdit( Composite, FormToolkit );

Everything else is the same.