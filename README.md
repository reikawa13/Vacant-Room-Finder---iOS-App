# CodePath iOS 101 Final Project "Vacant Room Finder"

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description of the App

"Vacant Room Finder" is an app that allows users to browse any availability of rooms/classrooms in their organization on their app. 
・It utilizes a map to enable users to find available rooms nearby visually. 
・When app users start using an empty classroom, they must either scan a URL code or open the app to register. 

## Product Specs

### 1. User Stories (Required and Optional)

**Required Must-Have Specs**
* Users can create a new account
* Users can log in
* Users can choose whether to search by building name or by using their locations to find nearby vacant rooms
* Users can connect their location to the map to more easily find vacant rooms nearby
* Users can receive recommendations on vacant rooms nearby
* Users can update the status of the rooms (vacant/taken)

**Optional Nice-To-Have Specs**
* Users can browse real-time vacant/taken rooms on map
* Users can update the status of the room easily by scanning a QR code
* Users can rate and leave comments on the rooms
* Users can check the future reservation status of the rooms.
* Users can tap on the rooms to find out information about the room

### 2. Screen Archetypes 

**Login Screen**
* Users can log in

**Registration Screen**
* Users can create a new account

**Stream (Search on Map)**
* Users can browse nearby buildings
* (Optional) Users can browse vacant/taken rooms on the map

**Search Building by Name Screen**
* Users can browse a list of buildings.
* By tapping on the 
* Users can tell if there are vacant rooms in the buildings or not. 
* (Optional) Users can type in the name of the buildings they want to find vacant rooms in
* (Optional) Calcualte the distance between the rooms and the user's location and sort the list

**Search Rooms by Name Screen**
* Users can see the status of the rooms in the chosen building

**Room Occupancy Update Screen**
* User can update the status of the room 

### 3. Navigation 

**Tap Navigation**
* Map Browser screen
* Search by Name screnn
* Room Registration screen

**Flow Navigation**
* Login screen -> Home
* Account Creation screen -> login screen


<img src="https://ibb.co/WnQtJf1" width=600>]
(https://ibb.co/WnQtJf1)

### 4. Sprint Planning
**Step 1 Main Features**
* Map and location
* Display List of buildings and rooms -> integrate with location
* Updating status of rooms
* Account creation and log in

**Step 2 Rough Plan**
Sprint 1: 
* Display List of buildings and rooms
* Updating status of rooms

Sprint 2:
* Map and location
* Account creation and log in

**Step 3 SMART Plan**
Sprint 1
* Create necessary storyboards (~15 mins)
* Create table view of buildings and rooms
* Add basic icons for the
* Allow users to change the status of the rooms

Sprint 2
* Creat the map viewcontroller using Map API and location
* Create login viewcontroller and save histories into local data
