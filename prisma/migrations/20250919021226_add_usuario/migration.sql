/*
  Warnings:

  - Added the required column `usuarioId` to the `historia` table without a default value. This is not possible if the table is not empty.
  - Added the required column `usuarioId` to the `projeto` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."historia" ADD COLUMN     "usuarioId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "public"."projeto" ADD COLUMN     "usuarioId" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "public"."usuario" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "criado_em" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "usuario_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "historia_usuarioId_idx" ON "public"."historia"("usuarioId");

-- CreateIndex
CREATE INDEX "projeto_usuarioId_idx" ON "public"."projeto"("usuarioId");

-- AddForeignKey
ALTER TABLE "public"."historia" ADD CONSTRAINT "historia_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "public"."usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."projeto" ADD CONSTRAINT "projeto_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "public"."usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
