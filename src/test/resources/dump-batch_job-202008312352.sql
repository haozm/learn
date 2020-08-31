-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: batch_job
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `batch_job_execution_context`
--

DROP TABLE IF EXISTS `batch_job_execution_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution_context` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  CONSTRAINT `batch_job_execution_context_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_context`
--

LOCK TABLES `batch_job_execution_context` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_context` DISABLE KEYS */;
INSERT INTO `batch_job_execution_context` VALUES (1,'{\"@class\":\"java.util.HashMap\"}',NULL),(2,'{\"@class\":\"java.util.HashMap\"}',NULL),(3,'{\"@class\":\"java.util.HashMap\"}',NULL),(4,'{\"@class\":\"java.util.HashMap\"}',NULL),(5,'{\"@class\":\"java.util.HashMap\"}',NULL),(6,'{\"@class\":\"java.util.HashMap\"}',NULL),(7,'{\"@class\":\"java.util.HashMap\"}',NULL),(8,'{\"@class\":\"java.util.HashMap\"}',NULL),(9,'{\"@class\":\"java.util.HashMap\"}',NULL),(10,'{\"@class\":\"java.util.HashMap\"}',NULL),(11,'{\"@class\":\"java.util.HashMap\"}',NULL),(12,'{\"@class\":\"java.util.HashMap\"}',NULL),(13,'{\"@class\":\"java.util.HashMap\"}',NULL);
/*!40000 ALTER TABLE `batch_job_execution_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_params`
--

DROP TABLE IF EXISTS `batch_job_execution_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution_params` (
  `BATCH_JOB_EXECUTION_PARAMS_ID` bigint NOT NULL AUTO_INCREMENT,
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `TYPE_CD` varchar(6) NOT NULL,
  `KEY_NAME` varchar(100) NOT NULL,
  `STRING_VAL` varchar(250) DEFAULT NULL,
  `DATE_VAL` datetime DEFAULT NULL,
  `LONG_VAL` bigint DEFAULT NULL,
  `DOUBLE_VAL` double DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL,
  PRIMARY KEY (`BATCH_JOB_EXECUTION_PARAMS_ID`),
  KEY `batch_job_execution_params_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `batch_job_execution_params_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_params`
--

LOCK TABLES `batch_job_execution_params` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_params` DISABLE KEYS */;
INSERT INTO `batch_job_execution_params` VALUES (1,1,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(2,1,'DATE','today','','2020-08-30 18:34:40',0,0,'Y'),(3,2,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(4,2,'STRING','today','2020-08-28','1970-01-01 08:00:00',0,0,'Y'),(5,3,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(6,3,'STRING','today','2020-08-27','1970-01-01 08:00:00',0,0,'Y'),(7,4,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(8,4,'STRING','today','2020-08-26','1970-01-01 08:00:00',0,0,'Y'),(9,5,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(10,5,'STRING','today','2020-08-26','1970-01-01 08:00:00',0,0,'Y'),(11,5,'STRING','factoryId','009575','1970-01-01 08:00:00',0,0,'Y'),(12,6,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(13,6,'STRING','today','2020-08-25','1970-01-01 08:00:00',0,0,'Y'),(14,6,'STRING','factoryId','009575','1970-01-01 08:00:00',0,0,'Y'),(15,7,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(16,7,'STRING','today','2020-08-24','1970-01-01 08:00:00',0,0,'Y'),(17,7,'STRING','factoryId','009575','1970-01-01 08:00:00',0,0,'Y'),(18,8,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(19,8,'STRING','today','2020-08-23','1970-01-01 08:00:00',0,0,'Y'),(20,8,'STRING','factoryId','009575','1970-01-01 08:00:00',0,0,'Y'),(21,9,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(22,9,'STRING','today','2020-08-22','1970-01-01 08:00:00',0,0,'Y'),(23,9,'STRING','factoryId','009575','1970-01-01 08:00:00',0,0,'Y'),(24,10,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(25,10,'STRING','today','2020-08-22','1970-01-01 08:00:00',0,0,'Y'),(26,10,'STRING','factoryId','009575','1970-01-01 08:00:00',0,0,'Y'),(27,11,'STRING','hao','xiaojie','1970-01-01 08:00:00',0,0,'Y'),(28,11,'STRING','today','2020-08-21','1970-01-01 08:00:00',0,0,'Y'),(29,11,'STRING','factoryId','009575','1970-01-01 08:00:00',0,0,'Y'),(30,12,'STRING','today','2020-08-20','1970-01-01 08:00:00',0,0,'Y'),(31,12,'STRING','factoryId','009575','1970-01-01 08:00:00',0,0,'Y'),(32,13,'STRING','today','2020-08-19','1970-01-01 08:00:00',0,0,'Y'),(33,13,'STRING','factoryId','009575','1970-01-01 08:00:00',0,0,'Y');
/*!40000 ALTER TABLE `batch_job_execution_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_seq`
--

DROP TABLE IF EXISTS `batch_job_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_seq` (
  `ID` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_seq`
--

LOCK TABLES `batch_job_seq` WRITE;
/*!40000 ALTER TABLE `batch_job_seq` DISABLE KEYS */;
INSERT INTO `batch_job_seq` VALUES (12);
/*!40000 ALTER TABLE `batch_job_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution_context`
--

DROP TABLE IF EXISTS `batch_step_execution_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_step_execution_context` (
  `STEP_EXECUTION_ID` bigint NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  CONSTRAINT `batch_step_execution_context_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `batch_step_execution` (`STEP_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution_context`
--

LOCK TABLES `batch_step_execution_context` WRITE;
/*!40000 ALTER TABLE `batch_step_execution_context` DISABLE KEYS */;
INSERT INTO `batch_step_execution_context` VALUES (1,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(2,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(3,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(4,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(5,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(6,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(7,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(8,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(9,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(10,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(11,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(12,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(13,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL);
/*!40000 ALTER TABLE `batch_step_execution_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_instance`
--

DROP TABLE IF EXISTS `batch_job_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint NOT NULL,
  `VERSION` bigint DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`JOB_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_instance`
--

LOCK TABLES `batch_job_instance` WRITE;
/*!40000 ALTER TABLE `batch_job_instance` DISABLE KEYS */;
INSERT INTO `batch_job_instance` VALUES (1,0,'demoJob','aa41152c0c4d3615e02b10b39939d6d9'),(2,0,'demoJob','d902e2fded0ac722668e869ce0248826'),(3,0,'demoJob','4b6088a9b41640aadc85f111985397c7'),(4,0,'demoJob','cf9d039b171a9a33a4fdbbe854dcbe51'),(5,0,'demoJob','f04847a5bec220fe36d737ef09f33845'),(6,0,'demoJob','d63e84e7c0c87eecd4dce8aebae6638b'),(7,0,'demoJob','eb95307b700bcb44eab70f39c05c1dde'),(8,0,'demoJob','49285784809f7822ca0fe7b5ce439bdf'),(9,0,'demoJob','29cc87a873c0ca4e58ac01f0d42486c5'),(10,0,'demoJob','73abbf748b30f384385404411d3f480d'),(11,0,'demoJob','64d86f17f512e5d0fe54b7005f3ee91b'),(12,0,'demoJob','577851af644e5cef5a171df9f8f6b9ca');
/*!40000 ALTER TABLE `batch_job_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution`
--

DROP TABLE IF EXISTS `batch_step_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint NOT NULL,
  `VERSION` bigint NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `START_TIME` timestamp NOT NULL,
  `END_TIME` timestamp NULL DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint DEFAULT NULL,
  `READ_COUNT` bigint DEFAULT NULL,
  `FILTER_COUNT` bigint DEFAULT NULL,
  `WRITE_COUNT` bigint DEFAULT NULL,
  `READ_SKIP_COUNT` bigint DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint DEFAULT NULL,
  `ROLLBACK_COUNT` bigint DEFAULT NULL,
  `EXIT_CODE` varchar(20) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  KEY `batch_step_execution_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `batch_step_execution_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution`
--

LOCK TABLES `batch_step_execution` WRITE;
/*!40000 ALTER TABLE `batch_step_execution` DISABLE KEYS */;
INSERT INTO `batch_step_execution` VALUES (1,32,'step01',1,'2020-08-30 10:34:41','2020-08-30 10:34:43','COMPLETED',30,1466,0,1466,0,0,0,0,'COMPLETED','','2020-08-30 10:34:43'),(2,32,'step01',2,'2020-08-30 10:42:47','2020-08-30 10:42:49','COMPLETED',30,1466,0,1466,0,0,0,0,'COMPLETED','','2020-08-30 10:42:49'),(3,3,'step01',3,'2020-08-30 11:28:49','2020-08-30 11:28:49','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2020-08-30 11:28:49'),(4,32,'step01',4,'2020-08-30 11:29:17','2020-08-30 11:29:20','COMPLETED',30,1466,0,1466,0,0,0,0,'COMPLETED','','2020-08-30 11:29:20'),(5,2,'step01',5,'2020-08-30 11:35:44','2020-08-30 11:35:44','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.jdbc.BadSqlGrammarException: PreparedStatementCallback; bad SQL grammar [SELECT * FROM  batch_job.prod_equipment_up_axis_detail WHERE factory_id = ? tag = 0 LIMIT 1;]; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'tag = 0 LIMIT 1\' at line 1\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:235)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.springframework.jdbc.core.JdbcTemplate.translateException(JdbcTemplate.java:1443)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:633)\r\n	at org.springframework.jdbc.core.JdbcTemplate.query(JdbcTemplate.java:669)\r\n	at org.springframework.jdbc.core.JdbcTemplate.query(JdbcTemplate.java:700)\r\n	at org.springframework.jdbc.core.JdbcTemplate.query(JdbcTemplate.java:712)\r\n	at org.springframework.jdbc.core.JdbcTemplate.queryForObject(JdbcTemplate.java:783)\r\n	at org.springframework.jdbc.core.JdbcTemplate.queryForMap(JdbcTemplate.java:819)\r\n	at org.learn.batch.DemoReaderAndWrite.read(DemoReaderAndWrite.java:19)\r\n	at org.learn.batch.DemoReaderAndWrite.read(DemoReaderAndWrite.java:11)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:567)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\r\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDyn','2020-08-30 11:35:44'),(6,2,'step01',6,'2020-08-30 11:36:08','2020-08-30 11:36:08','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.jdbc.BadSqlGrammarException: PreparedStatementCallback; bad SQL grammar [SELECT * FROM  batch_job.prod_equipment_up_axis_detail WHERE factory_id = ? tag = 0 LIMIT 1;]; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'tag = 0 LIMIT 1\' at line 1\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:235)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.springframework.jdbc.core.JdbcTemplate.translateException(JdbcTemplate.java:1443)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:633)\r\n	at org.springframework.jdbc.core.JdbcTemplate.query(JdbcTemplate.java:669)\r\n	at org.springframework.jdbc.core.JdbcTemplate.query(JdbcTemplate.java:700)\r\n	at org.springframework.jdbc.core.JdbcTemplate.query(JdbcTemplate.java:712)\r\n	at org.springframework.jdbc.core.JdbcTemplate.queryForObject(JdbcTemplate.java:783)\r\n	at org.springframework.jdbc.core.JdbcTemplate.queryForMap(JdbcTemplate.java:819)\r\n	at org.learn.batch.DemoReaderAndWrite.read(DemoReaderAndWrite.java:19)\r\n	at org.learn.batch.DemoReaderAndWrite.read(DemoReaderAndWrite.java:11)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:567)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\r\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDyn','2020-08-30 11:36:08'),(7,10,'step01',7,'2020-08-30 11:37:55','2020-08-30 11:37:56','COMPLETED',8,366,0,366,0,0,0,0,'COMPLETED','','2020-08-30 11:37:56'),(8,3,'step01',8,'2020-08-30 11:46:22','2020-08-30 11:46:23','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2020-08-30 11:46:23'),(9,10,'step01',9,'2020-08-30 11:46:43','2020-08-30 11:46:44','COMPLETED',8,366,0,366,0,0,0,0,'COMPLETED','','2020-08-30 11:46:44'),(10,10,'step01',10,'2020-08-30 12:51:11','2020-08-30 12:51:12','COMPLETED',8,366,0,366,0,0,0,0,'COMPLETED','','2020-08-30 12:51:12'),(11,3,'step01',11,'2020-08-30 15:17:16','2020-08-30 15:18:41','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2020-08-30 15:18:41'),(12,3,'step01',12,'2020-08-30 15:19:48','2020-08-30 15:21:25','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2020-08-30 15:21:25'),(13,3,'step01',13,'2020-08-30 15:22:17','2020-08-30 15:22:21','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2020-08-30 15:22:21');
/*!40000 ALTER TABLE `batch_step_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_seq`
--

DROP TABLE IF EXISTS `batch_job_execution_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution_seq` (
  `ID` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_seq`
--

LOCK TABLES `batch_job_execution_seq` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_seq` DISABLE KEYS */;
INSERT INTO `batch_job_execution_seq` VALUES (13);
/*!40000 ALTER TABLE `batch_job_execution_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution_seq`
--

DROP TABLE IF EXISTS `batch_step_execution_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_step_execution_seq` (
  `ID` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution_seq`
--

LOCK TABLES `batch_step_execution_seq` WRITE;
/*!40000 ALTER TABLE `batch_step_execution_seq` DISABLE KEYS */;
INSERT INTO `batch_step_execution_seq` VALUES (13);
/*!40000 ALTER TABLE `batch_step_execution_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution`
--

DROP TABLE IF EXISTS `batch_job_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `VERSION` bigint DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint NOT NULL,
  `CREATE_TIME` timestamp NOT NULL,
  `START_TIME` timestamp NULL DEFAULT NULL,
  `END_TIME` timestamp NULL DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(20) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` timestamp NULL DEFAULT NULL,
  `JOB_CONFIGURATION_LOCATION` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  KEY `batch_job_execution_FK` (`JOB_INSTANCE_ID`),
  CONSTRAINT `batch_job_execution_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`JOB_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution`
--

LOCK TABLES `batch_job_execution` WRITE;
/*!40000 ALTER TABLE `batch_job_execution` DISABLE KEYS */;
INSERT INTO `batch_job_execution` VALUES (1,2,1,'2020-08-30 10:34:40','2020-08-30 10:34:40','2020-08-30 10:34:43','COMPLETED','COMPLETED','','2020-08-30 10:34:43',NULL),(2,2,2,'2020-08-30 10:42:47','2020-08-30 10:42:47','2020-08-30 10:42:49','COMPLETED','COMPLETED','','2020-08-30 10:42:49',NULL),(3,2,3,'2020-08-30 11:28:49','2020-08-30 11:28:49','2020-08-30 11:28:49','COMPLETED','COMPLETED','','2020-08-30 11:28:49',NULL),(4,2,4,'2020-08-30 11:29:17','2020-08-30 11:29:17','2020-08-30 11:29:20','COMPLETED','COMPLETED','','2020-08-30 11:29:20',NULL),(5,2,5,'2020-08-30 11:35:44','2020-08-30 11:35:44','2020-08-30 11:35:44','FAILED','FAILED','','2020-08-30 11:35:44',NULL),(6,2,6,'2020-08-30 11:36:08','2020-08-30 11:36:08','2020-08-30 11:36:08','FAILED','FAILED','','2020-08-30 11:36:08',NULL),(7,2,7,'2020-08-30 11:37:55','2020-08-30 11:37:55','2020-08-30 11:37:56','COMPLETED','COMPLETED','','2020-08-30 11:37:56',NULL),(8,2,8,'2020-08-30 11:46:22','2020-08-30 11:46:22','2020-08-30 11:46:23','COMPLETED','COMPLETED','','2020-08-30 11:46:23',NULL),(9,2,9,'2020-08-30 11:46:43','2020-08-30 11:46:43','2020-08-30 11:46:44','FAILED','FAILED','','2020-08-30 11:46:44',NULL),(10,2,9,'2020-08-30 12:51:11','2020-08-30 12:51:11','2020-08-30 12:51:12','COMPLETED','COMPLETED','','2020-08-30 12:51:12',NULL),(11,2,10,'2020-08-30 15:17:15','2020-08-30 15:17:15','2020-08-30 15:18:41','COMPLETED','COMPLETED','','2020-08-30 15:18:41',NULL),(12,2,11,'2020-08-30 15:19:48','2020-08-30 15:19:48','2020-08-30 15:21:25','COMPLETED','COMPLETED','','2020-08-30 15:21:25',NULL),(13,2,12,'2020-08-30 15:22:16','2020-08-30 15:22:16','2020-08-30 15:22:47','COMPLETED','COMPLETED','','2020-08-30 15:22:47',NULL);
/*!40000 ALTER TABLE `batch_job_execution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-31 23:52:40
