<?php
      $servername = "localhost"; //giving the server name on which the php executes
      $username = "root"; //seeting the user name for the system
      $password = ""; //setting the password for the system
      $dbname = "catalog_17031233"; //entering the name of the database for the connection

    $connection= new mysqli($servername, $username, $password, $dbname); //this line connects the user with the database

    if ($connection->connect_error) //condition to show the error message with the problem occured 
    {
      die("Connection failed: " . $connection->connect_error);
    }
    
    /*
    *selecting the data from the table of the database catalog_17031233
    *And also checking the connection of the database with the user
    */

    $company_details= "SELECT * FROM company_details";
    $company_details_result= $connection->query($company_details);

    $chief_details= "SELECT * FROM chief";
    $chief_details_result= $connection->query($chief_details);

    $department_details= "SELECT * FROM department";
    $department_details_result= $connection->query($department_details);

    $xml = new DomDocument('1.0','UTF-8'); //it intialize the xml starting tag 
    $xml ->formatOutput=true; //this lines sets the formatting of the xml document

    while ($new_line =mysqli_fetch_array($company_details_result)) //the data from the database table is stored as an array
    {
      $company = $xml->createElement("Company"); //creates the element
      $xml->appendChild($company);

      $company_info = $xml->createElement("Company_Details");
      $company_info->setAttribute("type", $new_line[0]);
      $company->appendChild($company_info);

      $companyName=$xml->createElement("Name", $new_line[1]);
      $companyAddress=$xml->createElement("Address", $new_line[2]);
      $companyPhone=$xml->createElement("Phone", $new_line[3]);
      $companyLogo=$xml->createElement("Logo", $new_line[4]);


      $company_info->appendChild($companyName);
      $company_info->appendChild($companyAddress);
      $company_info->appendChild($companyPhone);
      $company_info->appendChild($companyLogo);

    }

    $company_department= $xml->createElement("Department");
    $company->appendChild($company_department);

    while ($new_line= mysqli_fetch_array($chief_details_result))
    {
      $company_chief= $xml->createElement("Chief");
      $company_department->appendChild($company_chief);

      $chiefName=$xml->createElement("Chief_Name",$new_line[0]);
      $chiefAddress=$xml->createElement("Chief_Address",$new_line[1]);
      $chiefEmail=$xml->createElement("Chief_Email",$new_line[2]);
      $chiefPhone=$xml->createElement("Chief_Phone",$new_line[3]);
      $chiefMobilePhone=$xml->createElement("Chief_MobilePhone",$new_line[4]);
      

      $company_chief->appendChild($chiefName);
      $company_chief->appendChild($chiefAddress);
      $company_chief->appendChild($chiefEmail);
      $company_chief->appendChild($chiefPhone);
      $company_chief->appendChild($chiefMobilePhone);
    }

    while ($new_line= mysqli_fetch_array($department_details_result))
    {
      $companyDeparment=$xml->createElement("Departments");
      $companyDeparment->setAttribute("id", $new_line[0]);
      $company_department->appendChild($companyDeparment);

      $department_name= $xml->createElement("Department_Name", $new_line[1]);
      $project_manager= $xml->createElement("Project_Manager", $new_line[2]);
      $phone= $xml->createElement("Department_Phone", $new_line[3]);
      $description= $xml->createElement("Description", $new_line[4]);
      $projects= $xml->createElement("No_of_Projects", $new_line[5]);
      $noofstaff= $xml->createElement("No_Of_Staff", $new_line[6]);

      $companyDeparment->appendChild($department_name);
      $companyDeparment->appendChild($project_manager);
      $companyDeparment->appendChild($phone);
      $companyDeparment->appendChild($description);
      $companyDeparment->appendChild($projects);
      $companyDeparment->appendChild($noofstaff);

    }

    echo "<xmp>" . $xml->saveXML() . "</xmp>"; //it displays the xml format in the browser and saves the document as .xml
    $xml->save('catalog_17031233.xml');
    
    ?>
    