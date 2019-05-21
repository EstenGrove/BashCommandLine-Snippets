# SED Commands
 ```SED``` is great for string replacing or using regex to match string patterns.
 
 
 ### Replacing all occurences of a pattern with another string
 - This will replace each instance of "NAME" inside all ```.txt``` files that start with "test-", with the string "Esten".
 - NOTE: On MacOSX ```SED``` working slightly differently and you need to define a label(ie ```'.old'``` as the "backup" file.
 ```bash
 sed -i '.old' 's/NAME/Esten/g' "test-"*.txt
 ```
