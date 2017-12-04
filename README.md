# buyers-list-matching
1.  download the required registers into a postgres DB, this currently includes:
government-organisation
government-service
internal-drainage-boards
local-authority-eng
local-authority-sct
local-authority-nir
principal-local-authority


2. create a database called buyers and load in the buyers list with the following column names:

buyer_corporate_identifier
buyer_name
registration_status
2. create the view using create_view.sql
3. run select_buyers.sql to generate the list of matches.