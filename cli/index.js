import fs from "fs/promises";

const backUpUserData = new URL("../reports/users.json", import.meta.url);
const userDataSQL = new URL("../db/seeds/users.sql", import.meta.url);

const retrivedData = await fs.readFile(backUpUserData, "utf-8");
const retrivedDataString = JSON.parse(retrivedData);

const sqlStatements = retrivedDataString
  .map((user) => {
    for (const key in user) {
      if (typeof user[key] === "string") {
        user[key] = user[key].replace("'", "''");
      }
    }
    const { id, username, first_name, last_name, email, avatar, password } =
      user;

    return `INSERT INTO users VALUES(${id}, '${username}', '${first_name}', '${last_name}', '${email}', '${avatar}', '${password}')`;
  })
  .join("\n");

await fs.writeFile(userDataSQL, sqlStatements);
