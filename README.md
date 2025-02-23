# QuickQuery (sl-xj-dataquery)

Simple tool to make basic queries against a db.

When executed from the IDE, a demo mode uses a small database included in the source tree.

The tool lets the user create simple queries by creating a 'automator like' flow.

Flows are grouped in projects, a project is linked to a single database.

When the user runs the flow from the start step (or a flow that contains only a start step) the generated query calculates the total of all available measures. This behaviour persists until a group/split step is added to the flow.



### Type of fields
Database fields are classified as ‘measures’ or ‘dimensions’

A measure is a field with database type float, double, .. It is expected to be summable. This is sometime called a continuous field.

A dimension is a field with database type string, text, integer, … This is sometime called a categorical field.


### Type of steps

The following steps are available:

- Start (the mandatory first step)
- Calculate
- Filter
- Group split
- Map
- Pivot
- Sort


### Start

The start step is the mandatory first step of a flow. The parameters are the name of the database and the name of the table, taken from the definition of the project.


### Calculate

This step is used to calculate new measures from existing measures. Note the mandatory “$” at the end of the field names (this is a quick/dirty fix for handling expression )


### Filter

Filter can be applied on measures and dimensions. The general form
Is 

 ‘field  operator value’

Where 

- field is any field available to the step
- operator is a value from ‘<‘, ‘<=‘, …
- value is 
	- a constant, to create an expression like COUNTRY = “BELGIUM”
	- is empty
	- another field, to create an expression like QUANTITY < MoQ



### Group split
This step is used to group data along one or more dimensions. 

When the user runs the flow from the start step (or a flow that contains only a start step) the generated query calculates the total of all available measures. This behaviour persists until a group/split step is added to the flow.

From the user perspective, this step tells the flow to split the results along dimension(s) chosen by the user.


### Map

This step is used to hide or rename measures.


### Pivot
Pivot is used to create blocks of measures when the underlying dataset contains record matching some conditions.




### Sort
This step is used to sort the results. All measures and dimensions are available. 

This step can also be used to limit the number of rows in the output.




