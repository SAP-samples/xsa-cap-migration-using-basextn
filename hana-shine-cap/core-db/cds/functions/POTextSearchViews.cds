using POTEXTSEARCH as POTextSearch from '../Proxy_Hdbfunction';

define view text_search with parameters TERM : String(40), ATTRIBUTE : String(20) as
  select from POTextSearch (
    TERMS: :TERM, ATTRIBUTE: :ATTRIBUTE
  ) {
    RESULTS,
    ATTRIBUTE
  };
