/*
  Warnings:

  - A unique constraint covering the columns `[phone]` on the table `last_message` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "last_message_phone_key" ON "last_message"("phone");
