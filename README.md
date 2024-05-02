1-the main difference between IMDB and PDB is where the data is stored on hardware level, as for IMDB data is stored in the memory which result in much higher efficiency and speed but also comes with higher cost and potential for data loss, while PDB have exactly the opposite of advantages and disadvantages. when it comes to use cases the standard is PDB unless the applications requieres low latency or frequent data query it will need IMDB. Still, in most of the cases when IMDB is used PDB is also used with it for long term data storage. A real life example for both databases can be social media platforms; for instance, IMDB is used to store posts that was posted by people with very big number of followers, since many people would request data about these posts; while PDB is used to store older posts wich will not recieve to much queries in addition to other data like user specific data which will only be requested by on person.

2-I pulled voltdb community image, created a network bridge called voltLocalCluster and runned the container in my GCP VM instance

3-Next i located external ip address for my VM instance, created a firwall rule to allow traffic from my ip address, and located the port for which voltdb container client port is mapped to, in this case it was 32768. Then i created connection with dbeaver from my local machine.

4-Then i created sql script to create mth3902 table and insert data to it and runned sql script

5-Now i located port number for voltdb UI and opened it on my local machine, and now i can see table i created with partition on id on both voltdb UI and DBeaver

