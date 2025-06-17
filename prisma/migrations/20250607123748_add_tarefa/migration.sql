/*
  Warnings:

  - You are about to drop the `last_message` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "last_message";

-- CreateTable
CREATE TABLE "tarefa" (
    "id" TEXT NOT NULL,
    "titulo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "ee_td" INTEGER NOT NULL,
    "ee_ar" INTEGER NOT NULL,
    "se_td" INTEGER NOT NULL,
    "se_ar" INTEGER NOT NULL,
    "ce_td" INTEGER NOT NULL,
    "ce_ar" INTEGER NOT NULL,
    "ali_td" INTEGER NOT NULL,
    "ali_ar" INTEGER NOT NULL,
    "aie_td" INTEGER NOT NULL,
    "aie_ar" INTEGER NOT NULL,
    "comm_dados" INTEGER,
    "proc_distribuido" INTEGER,
    "performance" INTEGER,
    "uso_config" INTEGER,
    "volume_transacoes" INTEGER,
    "entrada_online" INTEGER,
    "eficiencia_usuario" INTEGER,
    "atualizacao_online" INTEGER,
    "proc_complexo" INTEGER,
    "reusabilidade" INTEGER,
    "facil_instalacao" INTEGER,
    "facil_operacao" INTEGER,
    "multiplos_locais" INTEGER,
    "facil_mudanca" INTEGER,
    "linguagem" TEXT,
    "pf" INTEGER,
    "tempo_real" TEXT,
    "tempo_pf" TEXT,
    "criado_em" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "tarefa_pkey" PRIMARY KEY ("id")
);
