using UserData.User as USER from './UserData.cds';


context UserViews {
  define view UserHeader as
    select from USER {
      UserId,
      FirstName,
      LastName,
      Email
    };
};
