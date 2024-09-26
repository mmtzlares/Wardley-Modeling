// Create Nodes
CREATE 
(Customer:User {name: "Customer", evolution: 0.45, visibility: 1}),
(Online_Image_Manipulation:build {name: "Online Image Manipulation", evolution: 0.98, visibility: 0.34}),
(Online_Photo_Storage:build {name: "Online Photo Storage", evolution: 0.37, visibility: 0.91}),
(Print:buy {name: "Print", evolution: 0.6, visibility: 0.88}),
(Web_Site:buy {name: "Web Site", evolution: 0.65, visibility: 0.82}),
(CRM:buy {name: "CRM", evolution: 0.68, visibility: 0.68}),
(Platform:buy {name: "Platform", evolution: 0.58, visibility: 0.5}),
(Compute:buy {name: "Compute", evolution: 0.69, visibility: 0.35}),
(Data_Centre:buy {name: "Data Centre", evolution: 0.58, visibility: 0.15}),
(Power:buy {name: "Power", evolution: 0.9, visibility: 0.1}),

// Create Relationships
(Customer)-[:needs]->(Online_Image_Manipulation),
(Customer)-[:needs]->(Online_Photo_Storage),
(Customer)-[:needs]->(Print),
(Customer)-[:needs]->(Web_Site),
(Online_Photo_Storage)-[:needs]->(Web_Site),
(Web_Site)-[:needs]->(CRM),
(Web_Site)-[:needs]->(Platform),
(Platform)-[:needs]->(Compute),
(CRM)-[:needs]->(Compute),
(Compute)-[:needs]->(Data_Centre),
(Compute)-[:needs]->(Power),
(Data_Centre)-[:needs]->(Power)