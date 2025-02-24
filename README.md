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

![Screenshot 2025-02-23 at 14 03 48](https://github.com/user-attachments/assets/931e73d8-8e4d-436b-8f4c-e03db4a92717)



### Start

The start step is the mandatory first step of a flow. The parameters are the name of the database and the name of the table, taken from the definition of the project.


### Calculate
 ![Screenshot 2025-02-23 at 14 10 28](https://github.com/user-attachments/assets/c807717f-85c2-4e0d-869c-0b9cc40bdd6b)

This step is used to calculate new measures from existing measures. Note the mandatory “$” at the end of the field names (this is a quick/dirty fix for handling expression )


### Filter
![Screenshot 2025-02-23 at 14 08 40](https://github.com/user-attachments/assets/49553bad-204c-440e-bc20-7d053a9fa215)

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

#### Definition of split dimensions

![Screenshot 2025-02-24 at 14 21 33](https://github.com/user-attachments/assets/4f292d15-5558-496a-bcc3-b84324ad0627)

This step is used to group data along one or more dimensions. 

When the user runs the flow from the start step (or a flow that contains only a start step) the generated query calculates the total of all available measures. This behaviour persists until a group/split step is added to the flow.

#### Handling of measures

![Screenshot 2025-02-24 at 14 21 45](https://github.com/user-attachments/assets/a3ac9473-4b4a-41a2-8436-c5d88605b061)

From the user perspective, this step tells the flow to split the results along dimension(s) chosen by the user.

By default, all measure fields are summed. The user can also specify different aggregation (Min / Avg / Max) for distinct measure fields.




### Map
![Screenshot 2025-02-23 at 14 12 17](https://github.com/user-attachments/assets/e28220b9-a32b-4c22-8f98-d6ac58ff1dc8)

This step is used to hide or rename measures.


### Pivot
![Screenshot 2025-02-23 at 14 18 51](https://github.com/user-attachments/assets/7f8c74c3-39b4-414b-9655-89f5d629da4b)


Pivot is used to create blocks of measures when the underlying dataset contains record matching some conditions.
In this example, blocks are build based on field yearorder and only retain the cases where yearorder is 2022 or 2023

Running 'until here', gives the following results: 
![Screenshot 2025-02-23 at 14 19 25](https://github.com/user-attachments/assets/206dfb52-5c17-4e31-b00d-eaaa2195f081)


### Sort
![Screenshot 2025-02-23 at 14 20 41](https://github.com/user-attachments/assets/6089e4de-7454-4ed9-9e15-0f563c111747)

This step is used to sort the results. All measures and dimensions are available. 

Note that here we sort on one field generated by the 'pivot' step.

This step can also be used to limit the number of rows in the output.


### Another flow
![Screenshot 2025-02-23 at 14 23 06](https://github.com/user-attachments/assets/e5b12216-15de-410b-a3be-1ca7cbb0e338)


