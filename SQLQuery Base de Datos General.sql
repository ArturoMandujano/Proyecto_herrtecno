--Consultar La Base de Datos General
SELECT
    V.DetalleID,
    V.FechaVenta,
    V.NombreCliente,
    V.NombreCategoria,
    V.NombreProducto,
    V.PrecioUnitario,
    V.Cantidad,
    V.PrecioUnitario * V.Cantidad AS PrecioTotal,
    S.PrecioTotalPorFecha
FROM (
    SELECT DetalleID, FechaVenta, NombreCliente, NombreCategoria, NombreProducto, PrecioUnitario, Cantidad, PrecioUnitario * Cantidad AS PrecioTotal
    FROM Ventas
    INNER JOIN DetallesVenta ON DetallesVenta.VentaID = Ventas.VentaID
    INNER JOIN Clientes ON Clientes.ClienteID = Ventas.ClienteID
    INNER JOIN Productos ON Productos.ProductoID = DetallesVenta.ProductoID
    INNER JOIN Categoria ON Categoria.CategoriaID = Productos.CategoriaID
) AS V
LEFT JOIN (
    SELECT Fechaventa, SUM(preciototal) AS PrecioTotalPorFecha
    FROM Ventas
    INNER JOIN DetallesVenta ON DetallesVenta.VentaID = Ventas.VentaID
    GROUP BY Fechaventa
) AS S ON V.FechaVenta = S.Fechaventa;


