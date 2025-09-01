/*
  Warnings:

  - The `tempo_real` column on the `historia` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "public"."historia" DROP COLUMN "tempo_real",
ADD COLUMN     "tempo_real" DOUBLE PRECISION;
