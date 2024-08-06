---
title: Google Address Lookuo
parent: Web UI
layout: default
nav_order: 16
has_children: false
---

# Using Google Address lookup in a Web UI

This chapter will show you how to build a Web UI to help users enter an accurate address using Google Maps API. 

You will need to [register with Google API](https://cloud.google.com/docs/authentication/api-keys){:target="_blank"} to obtain your personal Google API key.

The Google API key associates the request with a Google Cloud project for billing and quota purposes. Because API keys do not identify the caller, they are often used for accessing public data or resources.

{% raw %}

You will use your own Google API key in the URL call to Google.   This will normally be stored in a variable.  It is used in this line of the HTML:

```html
<script src="https://maps.googleapis.com/maps/api/js?key={{Variables.GoogleAPIKey}}&libraries=places&callback=initAutocomplete&loading=async" async defer ></script>
```


Create a HTTP Response activity and set the language to 'Liquid'.  Paste this code into the 'Content' field.  Set the 'Content type' to 'text/html'




```html
<!DOCTYPE html>
<html class="h-full bg-white">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>xxx Services Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
 
    <style>

        select[name="contactNames"] {
            font-weight: bold;
        }
        .drag-area {
            border: 2px dashed #4B5563;
            border-radius: 8px;
        }
        .drag-over {
            background-color: #F3F4F6;
        }

     /* Additional styles to ensure fixed header and sidebar */
        .fixed-header {
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000; /* Ensure header is above other content */
        }

        .fixed-sidebar {
            position: fixed;
            height: 100%;
            left: 0;
            top: 0;
            z-index: 900; /* Ensure sidebar is above other content */
        }

        .content-with-fixed-elements {
            margin-top: 56px; /* Adjust based on the height of your fixed header */
            margin-left: 200px; /* Adjust based on the width of your fixed sidebar, if always visible */
        }
    
    /* Define the hover style for the link */
    .highlight-link {
        color: blue; /* Set the color of the link */
    }

    .highlight-link:hover {
        background-color: lightgray; /* Change background color on hover */
        cursor: pointer; /* Change cursor to pointer on hover */
    }

     #ContractTerm, #DateSelector, #QuoteSelection {
        width: 400px; /* Set the width to your desired value */
        /* Add any other styles as needed */
    }
    </style>

</head>

<body class="bg-gray-100">
    <!-- Top Bar -->
    <div class="fixed-header bg-white shadow-md px-4 py-3 flex items-center justify-between z-10">
        <!-- Logo -->
        <div class="flex items-center">
            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHwAAAAeCAIAAABhQO24AAAAAXNSR0IArs4c6QAAAIRlWElmTU0AKgAAAAgABQESAAMAAnqUEvk1X5xIUOqoVS4eYa78VdnZOBCnp9ZOwz1toHuTyDmE9ZGKuObgYlc9E/Ed0Ygq0ARxmoLcWbgSGEO9oH+g8f0SuqAvc5rnHMMpBX121BziYQw7LNRki+3PhZanYmu58KrMPiGHZDYVw+XJRM78J/VMGfyT+k4kdvsldAWmDfyzcORR42zP1LZZkHZ/mvHlOvD1b3PjLknywUPOAAAAAElFTkSuQmCC" 
            alt="Logo" > <!-- Replace 'logo.png' with the actual logo path -->
            <span class="ml-4 font-semibold text-xl tracking-tight"> Customer Portal</span>
        </div>
        
       <!-- Logout Section -->
        <div class="logout-section flex items-center">
            <p id="usernamePlaceholder" class="mr-4"></p>
            <button type="button" id="logoutButton" class="bg-red-500 hover:bg-red-700 text-white text-sm font-bold py-2 px-4 rounded">
                Logout
            </button>
        </div>

      

    </div>
    <div class="flex h-screen">
        <!-- Sidebar -->
        <div class="fixed-sidebar bg-blue-300 w-64 space-y-9 py-7 px-2 transition duration-200 ease-in-out">
            <!-- Menu Button for Mobile -->
            <button id="menuBtn" class="text-white md:hidden">
                <span>Menu</span>
            </button>
            <!-- Menu Items -->
            <nav>
              <div><p><strong>{{Variables.Company.Title}}</strong></p></div>
               <a href="#MenuItem1" id="MenuItem1"
                    class="menu-item text-indigo-900 block py-2.5 px-4 rounded transition duration-200 hover:bg-indigo-700 hover:text-white">MenuItem1</a>
                <a href="#MenuItem2" id="MenuItem2"
                    class="menu-item text-indigo-900 block py-2.5 px-4 rounded transition duration-200 hover:bg-indigo-700 hover:text-white">MenuItem2</a>
                <a href="#MenuItem3" id="MenuItem3"
                    class="menu-item text-indigo-900 block py-2.5 px-4 rounded transition duration-200 hover:bg-indigo-700 hover:text-white">MenuItem3</a>
                <a href="#MenuItem4" id="MenuItem4"
                    class="menu-item text-indigo-900 block py-2.5 px-4 rounded transition duration-200 hover:bg-indigo-700 hover:text-white">MenuItem4</a>
                <a href="#AdminMenu" id="AdminMenu"
                    class="{% if Variables.IsAdministrator == false %} hidden {% endif %} menu-item text-indigo-900 block py-2.5 px-4 rounded transition duration-200 hover:bg-indigo-700 hover:text-white">Admin menu</a>
               
            </nav>
        </div>
        <!-- Main Content -->
        <div class="content-with-fixed-elements flex-1 overflow-auto p-10">
            <!-- Your Scrollable Content Here -->
       
        
     <!-- Tailwind CSS Form -->
<div id="addPropertyForm" class="flex-1 p-1">
    <div class="px-4 sm:px-6 lg:px-8">
        <div class="sm:flex sm:items-center">
            <div class="sm:flex-auto">
                <h1 class="text-lg font-semibold leading-6 text-gray-900">Property</h1>
                {% if Variables.Property %}
                <p class="mt-2 text-sm text-gray-700">Update the Property <strong>{{ Variables.Property.BuildingName }}</strong>associated with {{ Variables.Company.Title}} </p><br>
                {% else %}
                <p class="mt-2 text-sm text-gray-700">Add a new Property associated with {{ Variables.Company.Title}} </p><br>
                {% endif %}
            </div>
        </div>
        <div class="mt-5 md:mt-0 md:col-span-2">
            <form method='post' action="/someURL" id="myForm" class="shadow overflow-scroll sm:rounded-md">
                <div class="px-4 py-5 bg-white space-y-6 sm:p-6">
                    <h1 class="text-xl font-medium leading-6 text-gray-900">Enter Property Details</h1>
                    <div class="hidden">
                        <!-- add any fields needed for your workflow, that are hidden from the user -->
                        <input type="hidden" id="objectid" name="id"  value="{{Variables.Property.ObjectId}}">
                        <input type="hidden" id="type" name="type" required value="Property">
                        <input type="hidden" id="action" name="action" required value="saverow">
                        <input type="hidden" id="username" name="username" required value="{{Variables.UserName}}">
                        <input type="hidden" id="name" name="name" required value="{{Variables.Name}}">
                        <input type="hidden" id="Client" name="Client" required value={{Variables.Company.ObjectId}}>
                        
                    </div>

                    <div id="theForm"  class="grid grid-cols-2 gap-6">
                        <div class="col-span-3 sm:col-span-2">
                            <label for="buildingName" class="block text-sm font-medium text-gray-700">Building Name:</label>
                            <input type="text" id="buildingName" name="BuildingName"  value="{{Variables.Property.BuildingName}}" 
                            oninvalid="this.setCustomValidity('Please enter the building name')"
                            oninput="this.setCustomValidity('')"
                            class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md bg-gray-100">
                        </div>
                        <div class="col-span-3 sm:col-span-2">
                            <label for="autocomplete" class="block text-sm font-medium text-gray-700">Lookup the Street Address:</label>
                            <input type="text" id="autocomplete" name="Address" required value="{{Variables.Property.Address}}"  class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md bg-gray-100">
                        </div>
                        <div class="col-span-3 sm:col-span-2">
                            <label for="buildingNumber" class="block text-sm font-medium text-gray-700">Number in Street:</label>
                            <input type="text" id="buildingNumber" name="BuildingNumber" required value="{{Variables.Property.BuildingNumber}}" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md bg-gray-100">
                        </div>
                        <div class="col-span-3 sm:col-span-2">
                            <label for="buildingStreet" class="block text-sm font-medium text-gray-700">Street:</label>
                            <input type="text" id="buildingStreet" name="BuildingStreet" required value="{{Variables.Property.BuildingStreet}}" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md bg-gray-100">
                        </div>
                        <div class="col-span-3 sm:col-span-2">
                            <label for="buildingSuburb" class="block text-sm font-medium text-gray-700">Suburb:</label>
                            <input type="text" id="buildingSuburb" name="BuildingSuburb" required value="{{Variables.Property.BuildingSuburb}}" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md bg-gray-100">
                        </div>
                        <div class="col-span-3 sm:col-span-2">
                            <label for="buildingState" class="block text-sm font-medium text-gray-700">State:</label>
                            <input type="text" id="buildingState" name="BuildingState" required value="{{Variables.Property.BuildingState}}" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md bg-gray-100">
                        </div>
                        <div class="col-span-3 sm:col-span-2">
                            <label for="buildingPostcode" class="block text-sm font-medium text-gray-700">Postcode:</label>
                            <input type="text" id="buildingPostcode" name="BuildingPostcode" required value="{{Variables.Property.BuildingPostcode}}" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md bg-gray-100">
                        </div>
                        <div class="col-span-3 sm:col-span-2">
                            <label for="buildingCountry" class="block text-sm font-medium text-gray-700">Country:</label>
                            <input type="text" id="buildingCountry" name="BuildingCountry" required value="{{Variables.Property.BuildingCountry | Default:'Australia'}}" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md bg-gray-100">
                        </div>
                    
                      
                    
                        <div class="px-4 py-3 bg-gray-50 text-right sm:px-6">
                            <button type="button" onclick="window.history.back()" id="cancelButton" class="ml-3 inline-flex justify-center py-2 px-4 border border-gray-300 shadow-sm text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Cancel</button>
                            <button type="submit" id="submitButton" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Save</button>
                        </div>
                    
                    </div>        
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?key={{Variables.GoogleAPIKey}}&libraries=places&callback=initAutocomplete&loading=async" async defer ></script>

<script>
      document.addEventListener('DOMContentLoaded', function() {


    });


    function initAutocomplete() {
    const autocomplete = new google.maps.places.Autocomplete(
        document.getElementById('autocomplete'), 
        {
        types: ['geocode'],
        componentRestrictions: {country: "au"}
        }
    );

    autocomplete.addListener('place_changed', function() {
        const place = autocomplete.getPlace();
        console.log(place)
        
        // Variables to store state and postcode
        let state = '';
        let street = '';
        let streetNumber = '';
        let postcode = '';
        let suburb = '';
        let country = ''

        // Loop over the address components of the selected place
        for (const component of place.address_components) {
            const componentType = component.types[0];

            // Check for the unit number
            if (componentType === "subpremise") {
                streetNumber = component.long_name+"/";
            }
            // Check for the streetNumber
            if (componentType === "street_number") {
                streetNumber += component.long_name;
            }

            // Check for the street
            if (componentType === "route") {
                street = component.long_name;
            }

            // Check for the suburb
            if (componentType === "locality") {
                suburb = component.long_name;
            }

            // Check for the postcode
            if (componentType === "postal_code") {
                postcode = component.long_name;
            }

            // Check for the state
            if (componentType === "administrative_area_level_1") {
                state = component.long_name; // or short_name for the abbreviated state
            }
            // Check for the country
            if (componentType === "country") {
                country = component.long_name;
            }

        }

        // Update the corresponding input fields
        document.getElementById('buildingNumber').value = streetNumber;
        document.getElementById('buildingStreet').value = street;
        document.getElementById('buildingSuburb').value = suburb;
        document.getElementById('buildingState').value = state;
        document.getElementById('buildingPostcode').value = postcode;
        document.getElementById('buildingCountry').value = country;
        if (document.getElementById('buildingName').value == '') {
            document.getElementById('buildingName').value = streetNumber + ' '+ street + ' '+suburb
        }
        
        
    });
    }


</script>

<!-- Script for action buttons -->
<script>
    
    document.getElementById("logoutButton").addEventListener("click", function() {
        // Redirect the user to /azLogoff endpoint
        window.location.href = "/azLogoff";
    });


function getUserNameorImpersonated() {
    let username = localStorage.getItem("username");  
    const impersonatedUsername = localStorage.getItem("impersonatedUsername");
 //   alert('impersonatedUsername')
    if (impersonatedUsername) {
        username = impersonatedUsername
    }
    return username
}

function getNameOrImpersonated() {
    let name = localStorage.getItem("name");
    const impersonatedName = localStorage.getItem("impersonatedName");
    if (impersonatedName) {
        name = impersonatedName
    }
    return name

}

    document.getElementById('menuBtn').addEventListener('click', function () {
        document.getElementById('sidebar').classList.toggle('-translate-x-full');
    });

    document.querySelectorAll('.menu-item').forEach(item => {
        item.addEventListener('click', function (event) {
            event.preventDefault();

            const section = item.getAttribute('href').substring(1);
          //  alert(section)
            if (section == "dashboard") {
                document.getElementById('properties').classList.add('hidden');
                document.getElementById('customers').classList.add('hidden');
                document.getElementById('dashboard').classList.remove('hidden');
                document.getElementById('opportunities').classList.add('hidden');
                document.getElementById('contacts').classList.add('hidden');
            } else if (section == "MenuItem1") {
                menuRequest("/focus","")
            } else if (section == "MenuItem2") {
                menuRequest("/focus","Services")
            } else if (section == "MenuItem3") {
                menuRequest("/focus","Quotes")
            } else if (section == "MenuItem4") {
                menuRequest("/focus","Agreements")
            } else if (section == "AdminMenu") {
                menuRequest("/adminMenu","Companies")
            }

        });
    });


    function menuRequest(actionURL,action) {
      // Create a form dynamically
      
        const username = getUserNameorImpersonated()
        const name = getNameOrImpersonated()
    
      const form = document.createElement('form');
      form.method = 'POST';
      form.action = actionURL;


    // Add user field to the form
      const userField = document.createElement('input');
      userField.type = 'hidden';
      userField.name = 'username';
      userField.value = username;
      form.appendChild(userField);

    // Add name field to the form
      const nameField = document.createElement('input');
      nameField.type = 'hidden';
      nameField.name = 'name';
      nameField.value = name;
      form.appendChild(nameField);

     
      // Add action field to the form
      const actionField = document.createElement('input');
      actionField.type = 'hidden';
      actionField.name = 'action';
      actionField.value = action;
      form.appendChild(actionField);

      // Add the form to the DOM and submit it
      document.body.appendChild(form);
      form.submit();
      }

function impersonateRequest(actionURL,action, name, username) {
      // Create a form dynamically
      //debugger
      //const name = localStorage.getItem("name");
      //const username = localStorage.getItem("username");
       
      const form = document.createElement('form');
      form.method = 'POST';
      form.action = actionURL;


    // Add user field to the form
      const userField = document.createElement('input');
      userField.type = 'hidden';
      userField.name = 'username';
      userField.value = username;
      form.appendChild(userField);

    // Add name field to the form
      const nameField = document.createElement('input');
      nameField.type = 'hidden';
      nameField.name = 'name';
      nameField.value = name;
      form.appendChild(nameField);

     
      // Add action field to the form
      const actionField = document.createElement('input');
      actionField.type = 'hidden';
      actionField.name = 'action';
      actionField.value = action;
      form.appendChild(actionField);

      // Add the form to the DOM and submit it
      document.body.appendChild(form);
      form.submit();
      }
   




</script>
 </div>  <!-- end of scrollable content -->
</body>

</html>
```


{% endraw %}

## Submit the form

This line of the code submits the form to your next workflow:

```html
<form method='post' action="/someURL" ....
```

You will create another workflow (or add another http endpoint to your other workflow) with the Endpoint of /someURL
