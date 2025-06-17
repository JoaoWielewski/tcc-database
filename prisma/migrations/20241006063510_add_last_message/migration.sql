-- CreateTable
CREATE TABLE "last_message" (
    "id" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "thread_id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "last_message_pkey" PRIMARY KEY ("id")
);
