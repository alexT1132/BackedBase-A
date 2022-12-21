const modeloUfc ={
    quieryGetUsers: "SELECT * FROM ufc",
    
    //Se sustituye cada elemento del arreglo por cada signo de interrogacion, y se acomodan en el orden respectivo
    //Si se usa 2 veces se pasa las 2 veces
    quieryGetUsersByeID: `SELECT * FROM ufc WHERE ID = ?`,
    quieryDeleteUsersByeID: `UPDATE ufc SET Activo = 'N' WHERE ID = ?`,
    quieryUsersExists: `SELECT Personaje FROM ufc WHERE Personaje = ?`,
    quieryAddUser:`INSERT INTO ufc (
        Personaje,
        Estilo,
        Equipo,
        Peleas_Ganadas,
        Peleas_Empates,
        Peleas_Perdidas,
        Oponente,
        Activo
        ) VALUES (
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?
        )`,
    
    quieryGetUsersInfo: `
    SELECT Personaje, Estilo, Equipo, Peleas_Ganadas, Peleas_Empates, Peleas_Perdidas, Oponente
    FROM ufc
    WHERE Personaje = ?`,
    
    quieryUpdateByeUsuario: `
    UPDATE ufc SET 
    Estilo = ?,
    Equipo = ?,
    Peleas_Ganadas = ?,
    Peleas_Empates = ?,
    Peleas_Perdidas = ?,
    Oponente = ?
    WHERE Personaje = ?
    `
    }
    
    module.exports = modeloUfc