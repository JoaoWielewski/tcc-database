/*
  Warnings:

  - Added the required column `projetoId` to the `equipe` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."equipe" ADD COLUMN     "projetoId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "public"."equipe" ADD CONSTRAINT "equipe_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "public"."projeto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
