CREATE OR REPLACE STORAGE INTEGRATION tableau_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::role/Tableau.Role'
  STORAGE_ALLOWED_LOCATIONS = ('s3:<BUCKET NAME>')
  COMMENT = 'Optional Comment';


  //description Integration Object
desc integration tableau_Integration;