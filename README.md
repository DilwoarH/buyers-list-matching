## buyers-list-matching
# 1.  download the required registers into a postgres DB, this currently includes:

government-organisation - https://government-organisation.register.gov.uk/

government-service - https://government-service.register.gov.uk/

internal-drainage-boards - https://internal-drainage-board.register.gov.uk/

local-authority-eng - https://local-authority-eng.register.gov.uk/

local-authority-sct - https://local-authority-sct.register.gov.uk/

local-authority-nir - https://local-authority-nir.register.gov.uk/

principal-local-authority - https://principal-local-authority.register.gov.uk/


# 2. create a database called buyers and load in the buyers list with the following column names:

buyer_corporate_identifier

buyer_name

registration_status

# 2. create the view using create_view.sql

# 3. run select_buyers.sql to generate the list of matches.
