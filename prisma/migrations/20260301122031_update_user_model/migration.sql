/*
  Warnings:

  - Added the required column `passwordResetExpiry` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "passwordResetExpiry",
ADD COLUMN     "passwordResetExpiry" TIMESTAMP(3) NOT NULL,
ALTER COLUMN "updatedAt" DROP DEFAULT;
