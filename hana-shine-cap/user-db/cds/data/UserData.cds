@cds.autoexpose


context UserData {
  /**
 * User DB
 */
  entity User {
        /**
 * User ID
 */
    key UserId    : Integer @sql.append: `generated always as identity( start with 1 increment by 1 no minvalue maxvalue 1999999999 no cache no cycle)`;
        /**
 * First Name
 */
        FirstName : String(40);
        /**
 * Last Name
 */
        LastName  : String(40);
        /**
 * Email
 */
        Email     : String(255);
  };
};
