-- Crear la tabla Tarjetas
create database DBPAGO
CREATE TABLE Tarjetas (
    id_tarjeta INT IDENTITY(1,1) PRIMARY KEY, -- Autoincremento con IDENTITY
    numero_tarjeta VARCHAR(16) NOT NULL,
    cvv VARCHAR(3) NOT NULL,
    fecha_expiracion DATE NOT NULL,
    tipo_tarjeta VARCHAR(10) CHECK (tipo_tarjeta IN ('Crédito', 'Débito')) NOT NULL,
    empresa VARCHAR(50) NOT NULL,
    saldo DECIMAL(10,2) DEFAULT 0.00,
    fecha_creacion DATETIME DEFAULT GETDATE()
);

-- Insertar 10 registros de ejemplo
INSERT INTO Tarjetas (numero_tarjeta, cvv, fecha_expiracion, tipo_tarjeta, empresa, saldo)
VALUES
    ('4111111111111111', '123', '2026-11-25', 'Crédito', 'Visa', 5000.00),
    ('5555555555554444', '456', '2025-06-30', 'Débito', 'MasterCard', 1500.00),
    ('378282246310005', '789', '2027-03-15', 'Crédito', 'American Express', 10000.00),
    ('6011111111111117', '321', '2024-12-01', 'Débito', 'Discover', 750.00),
    ('4000123456789010', '222', '2026-05-15', 'Crédito', 'Visa', 3000.00),
    ('5200123412341234', '333', '2025-10-20', 'Débito', 'MasterCard', 2500.00),
    ('340012341234123', '444', '2026-03-30', 'Crédito', 'American Express', 7000.00),
    ('6011000990139424', '555', '2025-08-10', 'Débito', 'Discover', 1200.00),
    ('4532015112830366', '666', '2027-02-28', 'Crédito', 'Visa', 4500.00),
    ('2223000048400011', '777', '2026-07-01', 'Débito', 'MasterCard', 800.00);

-- Consultar los registros para verificar los datos
SELECT * FROM Tarjetas;

create PROCEDURE sp_VerificarTarjeta
    @numeroTarjeta VARCHAR(16)
AS
BEGIN
    SELECT numero_tarjeta, cvv, fecha_expiracion, empresa
    FROM Tarjetas
    WHERE numero_tarjeta = @numeroTarjeta;
END;



ALTER TABLE Tarjetas
ALTER COLUMN tipo_tarjeta VARCHAR(10) NULL








CREATE PROCEDURE sp_AgregarTarjeta
    @numeroTarjeta VARCHAR(16),
    @cvv VARCHAR(3),
    @fechaExpiracion DATE,
    @tipoTarjeta VARCHAR(10) = NULL, -- Por defecto NULL
    @empresa VARCHAR(50),
    @resultado NVARCHAR(100) OUTPUT
AS
BEGIN
    BEGIN TRY
        -- Verificar si el número de tarjeta ya existe
        IF EXISTS (SELECT 1 FROM Tarjetas WHERE numero_tarjeta = @numeroTarjeta)
        BEGIN
            SET @resultado = 'El número de tarjeta ya existe.';
            RETURN;
        END

        -- Insertar la nueva tarjeta
        INSERT INTO Tarjetas (numero_tarjeta, cvv, fecha_expiracion, tipo_tarjeta, empresa, saldo)
        VALUES (@numeroTarjeta, @cvv, @fechaExpiracion, @tipoTarjeta, @empresa, 0);

        -- Mensaje de éxito
        SET @resultado = 'Tarjeta agregada exitosamente.';
    END TRY
    BEGIN CATCH
        -- Capturar errores y devolver el mensaje
        SET @resultado = ERROR_MESSAGE();
    END CATCH
END;

ALTER TABLE Tarjetas ALTER COLUMN tipo_tarjeta VARCHAR(10) NULL; --clave




---------------------
CREATE PROCEDURE sp_Pagar
    @numeroTarjeta VARCHAR(16),
    @monto DECIMAL(18, 2),
    @resultado NVARCHAR(100) OUTPUT
AS
BEGIN
    BEGIN TRY
        -- Verificar si existe la tarjeta
        IF NOT EXISTS (SELECT 1 FROM Tarjetas WHERE numero_tarjeta = @numeroTarjeta)
        BEGIN
            SET @resultado = 'Tarjeta no encontrada.';
            RETURN;
        END

        -- Verificar si el saldo es suficiente
        IF NOT EXISTS (SELECT 1 FROM Tarjetas WHERE numero_tarjeta = @numeroTarjeta AND saldo >= @monto)
        BEGIN
            SET @resultado = 'Saldo insuficiente.';
            RETURN;
        END

        -- Descontar el saldo
        UPDATE Tarjetas
        SET saldo = saldo - @monto
        WHERE numero_tarjeta = @numeroTarjeta;

        -- Confirmar el pago
        SET @resultado = 'Pago realizado exitosamente.';
    END TRY
    BEGIN CATCH
        SET @resultado = ERROR_MESSAGE();
    END CATCH
END;