# MD Elemente

## Embed pdfs

```
![Mein PDF dazu](<pdf/Manual_IoTEducationBoard.pdf>){ type=application/pdf style="min-height:50vh;width:100%" }
```


## Embed Video

Siehe: https://pypi.org/project/mkdocs-video/


[https://pypi.org/project/mkdocs-video/](https://pypi.org/project/mkdocs-video/)




### Version 1
Chrome start das Video automatisch.
Firefox nicht.

Synthax:

```
![type:video](./video/M159-KerberosScreencast.mp4)
```


### Version 3

Lorem ipsum dolor sit amet

```
![type:video](https://www.youtube.com/embed/LXb3EKWsInQ)
```



## Links

### Link öffnet sich im gleichen TAB

Die Modulidentifikation finden Sie bei: 

[Modulbaukasten ICT Schweiz](https://modulbaukasten.ch)

Code:
```
[Modulbaukasten ICT Schweiz](https://modulbaukasten.ch).
```

### Link öffnet sich in neuem TAB

[Modulbaukasten ICT Schweiz](https://modulbaukasten.ch){:target="_blank"}

Code:
```
[Modulbaukasten ICT Schweiz](https://modulbaukasten.ch){:target="_blank"}
```
## Content Tabs

### Grouping code blocks

=== "C"

    ``` c
    #include <stdio.h>

    int main(void) {
      printf("Hello world!\n");
      return 0;
    }
    ```

=== "C++"

    ``` c++
    #include <iostream>

    int main(void) {
      std::cout << "Hello world!" << std::endl;
      return 0;
    }
    ```


Markdown-Code:
```

=== "C"

    ``` c
    #include <stdio.h>

    int main(void) {
      printf("Hello world!\n");
      return 0;
    }
    ```

=== "C++"

    ``` c++
    #include <iostream>

    int main(void) {
      std::cout << "Hello world!" << std::endl;
      return 0;
    }
    ```



```



### Grouping other content

=== "Unordered list"

    * Sed sagittis eleifend rutrum
    * Donec vitae suscipit est
    * Nulla tempor lobortis orci

=== "Ordered list"

    1. Sed sagittis eleifend rutrum
    2. Donec vitae suscipit est
    3. Nulla tempor lobortis orci



Markdown-Code:
```

=== "Unordered list"

    * Sed sagittis eleifend rutrum
    * Donec vitae suscipit est
    * Nulla tempor lobortis orci

=== "Ordered list"

    1. Sed sagittis eleifend rutrum
    2. Donec vitae suscipit est
    3. Nulla tempor lobortis orci



```




### Embedded content

!!! example

    === "Unordered List"

        ``` markdown
        * Sed sagittis eleifend rutrum
        * Donec vitae suscipit est
        * Nulla tempor lobortis orci
        ```

    === "Ordered List"

        ``` markdown
        1. Sed sagittis eleifend rutrum
        2. Donec vitae suscipit est
        3. Nulla tempor lobortis orci
        ```



Markdown-Code:
```

!!! example

    === "Unordered List"

        ``` markdown
        * Sed sagittis eleifend rutrum
        * Donec vitae suscipit est
        * Nulla tempor lobortis orci
        ```

    === "Ordered List"

        ``` markdown
        1. Sed sagittis eleifend rutrum
        2. Donec vitae suscipit est
        3. Nulla tempor lobortis orci
        ```


```

## Bilder und Buttons

[Subscribe to our newsletter](#){ .md-button }

[Subscribe to our newsletter](#){ .md-button .md-button--primary }

[Send :fontawesome-solid-paper-plane:](#){ .md-button }



<figure markdown="span">
  ![Image title](https://dummyimage.com/600x400/){ width="300" }
  <figcaption>Image caption</figcaption>
</figure>

Code:

```
<figure markdown="span">
  ![Image title](https://dummyimage.com/600x400/){ width="300" }
  <figcaption>Image caption</figcaption>
</figure>

```

```

<figure markdown="span">
  ![Image title](img/screenshot.png){ width="500" }
  <figcaption>Screenshot</figcaption>
</figure>

```
Code:

```
<figure markdown="span">
  ![Image title](img/screenshot.png){ width="500" }
  <figcaption>Screenshot</figcaption>
</figure>
```





<figure markdown="span">
  ![Image title](../img/gibb_logo.png){ width="50" }
  <figcaption>gibb_logo</figcaption>
</figure>

Code:
```
<figure markdown="span">
  ![Image title](../img/gibb_logo.png){ width="50" }
  <figcaption>gibb_logo</figcaption>
</figure>

```


## Tables


### Simple Table

First Header | Second Header | Third Header
------------ | ------------- | ------------
Content Cell | Content Cell  | Content Cell
Content Cell | Content Cell  | Content Cell

Code:
```
First Header | Second Header | Third Header
------------ | ------------- | ------------
Content Cell | Content Cell  | Content Cell
Content Cell | Content Cell  | Content Cell

```


### Simple Table with alignment

First Header | Second Header | Third Header
:----------- |:-------------:| -----------:
Left         | Center        | Right
Left         | Center        | Right

Code:

```
First Header | Second Header | Third Header
:----------- |:-------------:| -----------:
Left         | Center        | Right
Left         | Center        | Right


```



### Table with Icons

| Method      | Description                          |
| ----------- | ------------------------------------ |
| `GET`       | :material-check:     Fetch resource  |
| `PUT`       | :material-check-all: Update resource |
| `DELETE`    | :material-close:     Delete resource |

Code:

```
| Method      | Description                          |
| ----------- | ------------------------------------ |
| `GET`       | :material-check:     Fetch resource  |
| `PUT`       | :material-check-all: Update resource |
| `DELETE`    | :material-close:     Delete resource |

```




### Left aligned

| Method      | Description                          |
| :---------- | :----------------------------------- |
| `GET`       | :material-check:     Fetch resource  |
| `PUT`       | :material-check-all: Update resource |
| `DELETE`    | :material-close:     Delete resource |

Code:

```
| Method      | Description                          |
| :---------- | :----------------------------------- |
| `GET`       | :material-check:     Fetch resource  |
| `PUT`       | :material-check-all: Update resource |
| `DELETE`    | :material-close:     Delete resource |


```


| Method      | Description                          |
| ----------- | ------------------------------------ |
| `GET`       | :material-check:     Fetch resource  |
| `PUT`       | :material-check-all: Update resource |
| `DELETE`    | :material-close:     Delete resource |

Code:

```
| Method      | Description                          |
| ----------- | ------------------------------------ |
| `GET`       | :material-check:     Fetch resource  |
| `PUT`       | :material-check-all: Update resource |
| `DELETE`    | :material-close:     Delete resource |
```

<table border="1x solid black">
  <tr>
    <th>Col 1</th> <th>Col 2</th>
  </tr>
  <tr>
    <td style="background-color:#FF1744">1a</td><td>2a</td>
  </tr>
  <tr>
    <td style="background-color:#00CD33">1b</td><td>2b</td>
  </tr>
</table>

Code:

```
<table border="1x solid black">
  <tr>
    <th>Col 1</th> <th>Col 2</th>
  </tr>
  <tr>
    <td style="background-color:#FF1744">1a</td><td>2a</td>
  </tr>
  <tr>
    <td style="background-color:#00CD33">1b</td><td>2b</td>
  </tr>
</table>

```



### Python Code Block


```python
def fn():
    pass
```

## Admonitions

### Note ohne eigenen Titel

!!! note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

``` markdown
!!! note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### Note mit eigenem Titel

!!! note "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

```         
!!! note "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### einfache Textbox

!!! note ""

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

```         
!!! note ""

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### default eingeklappt

??? note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

```         
??? note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```


### default ausgeklappt

???+ note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

```         
???+ note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### Text mit Inline-Admonitions



!!! info inline end "Lorem ipsum"

    Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Nulla et euismod nulla.
    Curabitur feugiat, tortor non consequat
    finibus, justo purus auctor massa, nec
    semper lorem quam in massa.


Markdown-Code end:

```         
!!! info inline end "Lorem ipsum"

    Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Nulla et euismod nulla.
    Curabitur feugiat, tortor non consequat
    finibus, justo purus auctor massa, nec
    semper lorem quam in massa.
```


!!! info inline "Lorem ipsum"

    Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Nulla et euismod nulla.
    Curabitur feugiat, tortor non consequat
    finibus, justo purus auctor massa, nec
    semper lorem quam in massa.



Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text
Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text 
Markdown-Code end:

```         
!!! info inline "Lorem ipsum"

    Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Nulla et euismod nulla.
    Curabitur feugiat, tortor non consequat
    finibus, justo purus auctor massa, nec
    semper lorem quam in massa.
```


Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text !!! tip inline end "Hinweis als Tip
!!! info inline end "Lorem ipsum"

    Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Nulla et euismod nulla.
    Curabitur feugiat, tortor non consequat
    finibus, justo purus auctor massa, nec
    semper lorem quam in massa.
Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Texxt Text Text Text Text Text Text !!! bug inline end "Hinweis zu Bug"

!!! info inline "Lorem ipsum"

    Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Nulla et euismod nulla.
    Curabitur feugiat, tortor non consequat
    finibus, justo purus auctor massa, nec
    semper lorem quam in massa.


Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text

### Note

!!! note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.


### ABSTRACT

!!! abstract

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! abstract "Abstract"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### INFO

!!! info

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! info "Info"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### TIP

!!! tip

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

```         
!!! tip "Tip"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### SUCCESS

!!! success

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! success "Success"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### QUESTION

!!! question

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! question

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### WARNING

!!! warning

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! warning

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### FAILURE

!!! failure

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! failure "FEHLER"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### DANGER

!!! danger

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! danger "GEFAHR"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### BUG

!!! bug

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! bug "BUG"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### EXAMPLE

!!! example "BEISPIEL"

    aaLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! example "BEISPIEL"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

### ZITAT

!!! quote "Zitat"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Markdown-Code:

``` markdown
!!! quote "Zitat"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

## Code Snippets

### simple Code Block 1

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.



### simple Code Block 2

``` bash
#!/bin/bash

echo "Hello world"
```



``` bash
#!/bin/bash
cd ~/Arduino/hardware
mkdir -p espressif && \
cd espressif && \
git clone https://github.com/espressif/arduino-esp32.git esp32 && \
cd esp32/tools && \
python3 get.py
```


``` bash
#!/bin/bash

while read file
do
    rename 's/\..*/\.bu/' $file
done <<< $(find $1 -maxdepth 1 -type f)
```

### Codeblock Python


``` py
"""
File: read_swisspost_csv.py
Author: Thomas Jäggi
Date: 25.09.2024
Description: 
Read the official Swiss-Post csv with street information and create for each table (REC_ART) a seperate csv-File with the name of the table.
Table Names are defined by the column REC_ART and are described in "Anleitung Strassenverzeichnisse.pdf"
"""

import pandas as pd

# Input-File is a ANSI-File, Windows 1252 encoded, separated with Semicolon
csv_file = "Post_Adressdaten20240903.csv"

# Delimiter
delimiter = ';'

# Since the csv-File does not have the same number of columns for each row, we have to 
# determine the maximum number of columns  and include them in the dataframe as names.
# The name will be a number from 0 to max_columns-1.
largest_column_count = 0

# Loop the data lines and determine the maximum number of columns per row. Name the column with a number from 0 to largest_column_count
with open(csv_file, 'r') as temp_f:
    
    # get No of columns in each line
    col_count = [ len(row.split(delimiter)) for row in temp_f.readlines() ]
    
### Generate column names  (names will be 0, 1, 2, ..., maximum columns - 1)
column_names = [i for i in range(0, max(col_count))]


# Read csv into dataframe df and print. Set Encoding to cp1252 for windows.
df = pd.read_csv(csv_file, header=None, delimiter=delimiter, names=column_names, encoding="cp1252")
print('First 20 rows in csv')
print(df.head(20))
print('Last 20 rows in csv')
print(df.tail(20))
print('Number of lines in csv-File:')
print(df.shape[0])

# Generate for each REC_ART one csv-File. groupby([0]): Group by REC_ART which is column 0
for (rec_art), group in df.groupby([0]):
     
     if rec_art == (0,):
         print('Writing csv NEW_HEA ..')
         tablename = 'NEW_HEA'
     if rec_art == (1,):
         print('Writing csv NEW_PLZ ..')
         tablename = 'NEW_PLZ1'
     if rec_art == (2,):
         print('Writing csv NEW_PLZ2 ..')
         tablename = 'NEW_PLZ2'
     if rec_art == (3,):
         print('Writing csv NEW_COM ..')
         tablename = 'NEW_COM'
     if rec_art == (4,):
         print('Writing csv NEW_STR ..')
         tablename = 'NEW_STR'
     if rec_art == (5,):
         print('Writing csv NEW_STRA ..')
         tablename = 'NEW_STRA'
     if rec_art == (6,):
         print('Writing csv NEW_GEB ..')
         tablename = 'NEW_GEB'
     if rec_art == (7,):
         print('Writing csv NEW_GEBA ..')
         tablename = 'NEW_GEBA'
     if rec_art == (8,):
         print('Writing csv NEW_BOT_B ..')
         tablename = 'NEW_BOT_B'
     if rec_art == (12,):
         print('Writing csv NEW_GEB_COM ..')
         tablename = 'NEW_GEB_COM'
     if rec_art == (10,):
         print('Writing csv NEW_GEO ..')
         tablename = 'NEW_GEO'
     if rec_art == (11,):
         print('Writing csv NEW_HH ..')
         tablename = 'NEW_HH'
     
     # Using groupby() method of Pandas we can create multiple CSV files. To create a file we can use the to_csv() method of  Pandas.
     group.to_csv(f'{tablename}.csv', index=False, encoding="cp1252", sep=delimiter)
     
```

### Code Block mit Titel


``` py 
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```


### Codeblock Bash

``` bash
orig=schema_tableName_
dest=tableName_

for(i=0; i<(ls ${orig}*|wc -l); i++) {
  cp ${orig} ${dest} -v
}
```


### Codeblock mit Annotations
``` yaml
theme:
  features:
    - content.code.annotate # (1)
```

1.  :man_raising_hand: I'm a code annotation! I can contain `code`, __formatted
    text__, images, ... basically anything that can be written in Markdown.



### Markdown Code für Codeblock mit Annotations
``` markdown

``` yaml
theme:
  features:
    - content.code.annotate # (1)

```

1.  :man_raising_hand: I'm a code annotation! I can contain `code`, __formatted
    text__, images, ... basically anything that can be written in Markdown.
```
```

### Mit Linenumbers

``` py linenums="1"
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```


### Highlighting specific lines

``` py hl_lines="2 3"
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```

### Highlighting specific lines with LineNumbers and Arduino Code

``` arduino linenums="1" hl_lines="19-43 52 53 54 55 56 57 58 80 93 94"
/* 
  Sketch generated by the Arduino IoT Cloud Thing "Untitled 2"
  https://create.arduino.cc/cloud/things/3a80c051-cdbd-4f19-97a0-f303a303b5d8 

  Arduino IoT Cloud Variables description

  The following variables are automatically generated and updated when changes are made to the Thing

  int fan_speed;
  bool button_state;

  Variables which are marked as READ/WRITE in the Cloud Thing will also have functions
  which are called when their values are changed from the Dashboard.
  These functions are generated with the Thing and added at the end of this sketch.
*/

#include "thingProperties.h"

#define PWM_KANAL_0 0
#define PWM_KANAL_1 1
#define PWM_AUFLOESUNG 8
#define PWM_FREQ 5000
#define INA_PIN 16  // PWM-Pin
#define INB_PIN 17  // PWM-Pin
#define BTN_B1 22   // Button B1 an GPIO 22


// int maxTV = pow(2,PWMA_AUFLOESUNG)-1; // Bei 8 Bit = 0-255


/*     L9110H Control 
 *    INPUT    
 *  INA  INA    Function
 *  ===========================
 *  L     L     OFF
 *  H     L     FORWARD CW
 *  L     H     REVERSE CCW
 *  H     H     OFF 
 */

int maxspeed = 255;
int minspeed = 0;
int speed=0;


void setup() {
  // Initialize serial and wait for port to open:
  Serial.begin(9600);
  // This delay gives the chance to wait for a Serial Monitor without blocking if none is found
  delay(1500); 
  
  pinMode(BTN_B1, INPUT);   // Button Pin ist Input
  pinMode(INA_PIN,OUTPUT);
  pinMode(INB_PIN,OUTPUT);
  ledcSetup(PWM_KANAL_0,PWM_FREQ,PWM_AUFLOESUNG);
  ledcSetup(PWM_KANAL_1,PWM_FREQ,PWM_AUFLOESUNG);
  ledcAttachPin(INA_PIN, PWM_KANAL_0);
  ledcAttachPin(INB_PIN, PWM_KANAL_1);
  
  // Defined in thingProperties.h
  initProperties();

  // Connect to Arduino IoT Cloud
  ArduinoCloud.begin(ArduinoIoTPreferredConnection);
  
  /*
     The following function allows you to obtain more information
     related to the state of network and IoT Cloud connection and errors
     the higher number the more granular information you’ll get.
     The default is 0 (only errors).
     Maximum is 4
 */
  setDebugMessageLevel(2);
  ArduinoCloud.printDebugInfo();
}

void loop() {
  ArduinoCloud.update();
  // Your code here 
  button_state = !(digitalRead(BTN_B1));
  
}




/*
  Since FanSpeed is READ_WRITE variable, onFanSpeedChange() is
  executed every time a new value is received from IoT Cloud.
*/
void onFanSpeedChange()  {
  // Add your code here to act upon FanSpeed change
  ledcWrite(PWM_KANAL_0,fan_speed);                 // INA = 255
  ledcWrite(PWM_KANAL_1,0);                        // INB = 0
}


```



### Inline Code Block

The `#!python range()` function is used to generate a sequence of numbers.



## Emojis

:smile:
:wink:
:heart:
:laughing:
:cry:
:apple:
:school:
:cat:
:dog:
:cow:
:ski:
:bicycle:
:fontawesome-regular-face-laugh-wink:







## Text mit Fussnoten

Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem[^1] ipsum Lorem ipsum Lorem ipsum Lorem ipsum 

ipsum Lorem ipsum Lorem ipsum Lorem ipsum[^2] Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum 

[^1]: Lorem ipsum dolor sit amet, consectetur adipiscing elit.

[^2]:
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.



### Markdown Code für Fussnoten
```
Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem[^1] ipsum Lorem ipsum Lorem ipsum Lorem ipsum 

ipsum Lorem ipsum Lorem ipsum Lorem ipsum[^2] Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum 

[^1]: Lorem ipsum dolor sit amet, consectetur adipiscing elit.

[^2]:
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

```
eingebettet in einer Annotation geht auch
```
!!! tip "Tip"

    ```
    Lorem ipsum dolor sit amet[^3], consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat[^4] finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
    ```
```


```
[^3]: Lorem ipsum dolor sit amet, consectetur adipiscing elit.

[^4]:
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

## Arrows in Markdown

&harr;
```
&harr;
```


&uarr;

```
&uarr;
```


&darr;

```
&darr;
```

&larr;

```
&larr;
```


&rarr;

```
&rarr;
```
