ALTER TABLE activities ADD COLUMN IF NOT EXISTS latitude double precision;
ALTER TABLE activities ADD COLUMN IF NOT EXISTS longitude double precision;
ALTER TABLE activities ADD COLUMN IF NOT EXISTS place_name text;

-- Copiar endereço para place_name como fallback
UPDATE activities SET place_name = address WHERE place_name IS NULL;
