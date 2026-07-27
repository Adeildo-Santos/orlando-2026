-- Adicionar colunas que o código espera
ALTER TABLE activities ADD COLUMN IF NOT EXISTS time text;
ALTER TABLE days ADD COLUMN IF NOT EXISTS date text;

-- Atualizar com dados
UPDATE activities SET time = '08:00' WHERE order_index = 1;
UPDATE activities SET time = '09:00' WHERE order_index = 2;
UPDATE activities SET time = '10:00' WHERE order_index = 3;
UPDATE activities SET time = '11:00' WHERE order_index = 4;
UPDATE activities SET time = '12:00' WHERE order_index = 5;
UPDATE activities SET time = '13:00' WHERE order_index = 6;
UPDATE activities SET time = '14:00' WHERE order_index = 7;
UPDATE activities SET time = '15:00' WHERE order_index = 8;
UPDATE activities SET time = '09:00' WHERE order_index > 8;

UPDATE days SET date = '2026-12-16' WHERE day_number = 1;
UPDATE days SET date = '2026-12-17' WHERE day_number = 2;
UPDATE days SET date = '2026-12-18' WHERE day_number = 3;
UPDATE days SET date = '2026-12-19' WHERE day_number = 4;
UPDATE days SET date = '2026-12-20' WHERE day_number = 5;
UPDATE days SET date = '2026-12-21' WHERE day_number = 6;
UPDATE days SET date = '2026-12-22' WHERE day_number = 7;

-- Verificar
SELECT count(*) as activities_count FROM activities WHERE time IS NOT NULL;
SELECT count(*) as days_count FROM days WHERE date IS NOT NULL;
