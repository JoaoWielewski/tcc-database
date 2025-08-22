/*
  Warnings:

  - You are about to drop the column `atualizacao_online` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `comm_dados` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `eficiencia_usuario` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `entrada_online` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `facil_instalacao` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `facil_mudanca` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `facil_operacao` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `linguagem` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `multiplos_locais` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `performance` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `proc_complexo` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `proc_distribuido` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `reusabilidade` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `uso_config` on the `historia` table. All the data in the column will be lost.
  - You are about to drop the column `volume_transacoes` on the `historia` table. All the data in the column will be lost.
  - Added the required column `equipeId` to the `historia` table without a default value. This is not possible if the table is not empty.
  - Added the required column `projetoId` to the `historia` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."historia" DROP COLUMN "atualizacao_online",
DROP COLUMN "comm_dados",
DROP COLUMN "eficiencia_usuario",
DROP COLUMN "entrada_online",
DROP COLUMN "facil_instalacao",
DROP COLUMN "facil_mudanca",
DROP COLUMN "facil_operacao",
DROP COLUMN "linguagem",
DROP COLUMN "multiplos_locais",
DROP COLUMN "performance",
DROP COLUMN "proc_complexo",
DROP COLUMN "proc_distribuido",
DROP COLUMN "reusabilidade",
DROP COLUMN "uso_config",
DROP COLUMN "volume_transacoes",
ADD COLUMN     "atores_complexos" INTEGER,
ADD COLUMN     "atores_medios" INTEGER,
ADD COLUMN     "atores_simples" INTEGER,
ADD COLUMN     "casos_complexos" INTEGER,
ADD COLUMN     "casos_medios" INTEGER,
ADD COLUMN     "casos_simples" INTEGER,
ADD COLUMN     "equipeId" TEXT NOT NULL,
ADD COLUMN     "pcu" INTEGER,
ADD COLUMN     "projetoId" TEXT NOT NULL,
ADD COLUMN     "tempo_pcu" TEXT,
ALTER COLUMN "ee_td" DROP NOT NULL,
ALTER COLUMN "ee_ar" DROP NOT NULL,
ALTER COLUMN "se_td" DROP NOT NULL,
ALTER COLUMN "se_ar" DROP NOT NULL,
ALTER COLUMN "ce_td" DROP NOT NULL,
ALTER COLUMN "ce_ar" DROP NOT NULL,
ALTER COLUMN "ali_td" DROP NOT NULL,
ALTER COLUMN "ali_ar" DROP NOT NULL,
ALTER COLUMN "aie_td" DROP NOT NULL,
ALTER COLUMN "aie_ar" DROP NOT NULL;

-- CreateTable
CREATE TABLE "public"."projeto" (
    "id" TEXT NOT NULL,
    "titulo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "comm_dados" INTEGER NOT NULL,
    "proc_distribuido" INTEGER NOT NULL,
    "performance" INTEGER NOT NULL,
    "uso_config" INTEGER NOT NULL,
    "volume_transacoes" INTEGER NOT NULL,
    "entrada_online" INTEGER NOT NULL,
    "eficiencia_usuario" INTEGER NOT NULL,
    "atualizacao_online" INTEGER NOT NULL,
    "proc_complexo" INTEGER NOT NULL,
    "reusabilidade" INTEGER NOT NULL,
    "facil_instalacao" INTEGER NOT NULL,
    "facil_operacao" INTEGER NOT NULL,
    "multiplos_locais" INTEGER NOT NULL,
    "facil_mudanca" INTEGER NOT NULL,
    "sistema_distribuido" INTEGER NOT NULL,
    "requisitos_performance" INTEGER NOT NULL,
    "eficiencia_usuario_final" INTEGER NOT NULL,
    "complexidade_processamento" INTEGER NOT NULL,
    "reusabilidade_extra" INTEGER NOT NULL,
    "facilidade_instalacao_extra" INTEGER NOT NULL,
    "facilidade_uso" INTEGER NOT NULL,
    "portabilidade" INTEGER NOT NULL,
    "facilidade_mudancas" INTEGER NOT NULL,
    "conexoes_simultaneas" INTEGER NOT NULL,
    "requisitos_seguranca" INTEGER NOT NULL,
    "acesso_componentes_terceiros" INTEGER NOT NULL,
    "treinamento_especializado" INTEGER NOT NULL,
    "linguagem" TEXT NOT NULL,
    "criado_em" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "projeto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."equipe" (
    "id" TEXT NOT NULL,
    "titulo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "familiaridade_metodologia" INTEGER NOT NULL,
    "experiencia_dominio" INTEGER NOT NULL,
    "experiencia_tecnologia" INTEGER NOT NULL,
    "estabilidade_requisitos" INTEGER NOT NULL,
    "experiencia_geral" INTEGER NOT NULL,
    "participacao_cliente" INTEGER NOT NULL,
    "motivacao_equipe" INTEGER NOT NULL,
    "pressao_prazos" INTEGER NOT NULL,
    "criado_em" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "equipe_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "historia_equipeId_idx" ON "public"."historia"("equipeId");

-- CreateIndex
CREATE INDEX "historia_projetoId_idx" ON "public"."historia"("projetoId");

-- AddForeignKey
ALTER TABLE "public"."historia" ADD CONSTRAINT "historia_equipeId_fkey" FOREIGN KEY ("equipeId") REFERENCES "public"."equipe"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."historia" ADD CONSTRAINT "historia_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "public"."projeto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
