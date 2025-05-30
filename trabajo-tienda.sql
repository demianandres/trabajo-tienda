SELECT 
    TO_CHAR(updatedAt, 'YYYY-MM') AS mes,
    COUNT(*) AS actualizaciones
FROM 
    venta
WHERE 
    updatedAt IS NOT NULL
GROUP BY 
    TO_CHAR(updatedAt, 'YYYY-MM')
ORDER BY 
    actualizaciones DESC;

