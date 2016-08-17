/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.28 : Database - biology
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`biology` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `biology`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `Name` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

LOCK TABLES `admin` WRITE;

insert  into `admin`(`Name`,`Password`) values ('zyj','061226'),('zbw','zbw'),('spp','spp'),('mzq','mzq');

UNLOCK TABLES;

/*Table structure for table `antigen` */

DROP TABLE IF EXISTS `antigen`;

CREATE TABLE `antigen` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `benchid` varchar(20) DEFAULT NULL,
  `pdb_id` varchar(20) DEFAULT NULL,
  `mimotopes` varchar(1000) DEFAULT NULL,
  `tem_c_No` varchar(10) DEFAULT NULL,
  `tar_c_No` varchar(10) DEFAULT NULL,
  `epitopes` varchar(500) DEFAULT NULL,
  `size_e` int(10) DEFAULT NULL,
  `ref` varchar(20) DEFAULT NULL,
  `PMID` varchar(20) DEFAULT NULL,
  `pdblink` varchar(100) DEFAULT NULL,
  `pmlink` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `antigen` */

LOCK TABLES `antigen` WRITE;

insert  into `antigen`(`id`,`benchid`,`pdb_id`,`mimotopes`,`tem_c_No`,`tar_c_No`,`epitopes`,`size_e`,`ref`,`PMID`,`pdblink`,`pmlink`) values (1,'2OSL','AA001','CWWEWTATC(11)\r\nCWWEWTIGC(3)\r\nCWWEWTGAC(2)\r\nCQFTVWEWC(1)\r\nCCLGRWCWC(1)\r\nCWEWSGNGC(1)\r\nCSWTSLPFC(1)\r\nCHAWMGLRC(1)\r\nCFKRSGSLC(1)\r\nCWRRGYGGC(1)\r\nCKPWFPELC(1)\r\nCALMIANSC(1)\r\nCRLTANLPC(1)','P','L','168GLU 169PRO 170ALA 171ASN',4,'CMA','16705086','http://www.pdb.org/pdb/explore/explore.do?structureId=2OSL','http://www.ncbi.nlm.nih.gov/pubmed/16705086'),(2,'3IU3','AA002','CTRGFEWLC(10)\r\nCVFYYNWVC(3)\r\nCVYLYEWVC(2)\r\nCVYHYRWLC(1)\r\nCRDRYWPWC(1)\r\nCEWIYHYWC(1)','I','LH','1GLU 2LEU 4ASP 5ASP 6ASP 22GLU 23GLY 25MET 27ASN 29GLU 36ARG 38LYS 39SER 40GLY 42LEU 43TYR 45LEU 47THR 48GLY 56ASP 57ASN 118ILE 120HIS',23,'CMA','17440057','http://www.pdb.org/pdb/explore/explore.do?structureId=3IU3','http://www.ncbi.nlm.nih.gov/pubmed/17440057'),(3,'1TET','AA003','AYQKWQTGA(2)\r\nEYQPHQTGL(1)\r\nPYENQQTGW(1)\r\nGYLPEQLGV(1)\r\nPYLFEQSGA(1)\r\nRYIALQLGL(1)\r\nNYRQDQLGM(1)\r\nSYRSLQTGW(1)\r\nYYAFGQIGL(1)\r\nAYQMYAIPA(1)','P','LH','3VAL 4PRO 5GLY 6SER 7GLN 8HIS 9ILE 10ASP 11SER 12GLN 13LYS ',11,'CMA','16273596','http://www.pdb.org/pdb/explore/explore.do?structureId=1TET','http://www.ncbi.nlm.nih.gov/pubmed/16273596'),(4,'1TET','AA004','CNQLFNTPPSC(5)\r\nCAQTFNSTTEC(1)\r\nCRQGLHTPPRC(1)\r\nCVRAPLLGPRC(1)\r\nCYGPLSSPLNC(1)','P','LH','3VAL 4PRO 5GLY 6SER 7GLN 8HIS 9ILE 10ASP 11SER 12GLN 13LYS ',11,'CMA','16273596','http://www.pdb.org/pdb/explore/explore.do?structureId=1TET','http://www.ncbi.nlm.nih.gov/pubmed/16273596'),(5,'1YY9','AA005','CVWQRWQKSYVC(1)\r\nCMWDRFSRWYKC(1)\r\nCQYNLSSRALKC(2)\r\nCQFDLSTRRLKC(7)','A','CD','353ARG 384GLN 408GLN 109HIS 412PHE 417VAL 418SER 438ILE 440SER 443LYS 465LYS 466ILE 467ILE 468SER 473ASN',15,'CED','16288119','http://www.pdb.org/pdb/explore/explore.do?structureId=1YY9','http://www.ncbi.nlm.nih.gov/pubmed/16288119'),(6,'1N8Z','AA006','CVDYHYEGTITC(1)\r\nCKLYWADGELTC(3)\r\nCVDYHYEGAITC(8)\r\nCKLYWADGEFTC(18)\r\nCQMWAPQWGPDC(51)','C','AB','557PRO 558GLU 559ALA 560ASP 561GLN 570ASP 571PRO 572PRO 573PHE 593LYS 594PHE 595PRO 596ASP 597GLU 598GLU 599GLY 600ALA 601CYS 602GLN 603PRO',20,'CED','15210798','http://www.pdb.org/pdb/explore/explore.do?structureId=1N8Z','http://www.ncbi.nlm.nih.gov/pubmed/15210798'),(7,'2ADF','AA007','CTRGFEWLC(10) CVFYYNWVC(3) CVYLYEWVC(2) CVYHYRWLC(1) CRDRYWPWC(1) CEWIYHYWC(1)','A','LH','975ILE 976THR 977THR 978ILE 979ASP 981PRO 982TRP 983ASN 1009ASP 1012GLY 1013PHE 1016ARG 1017TYR 1022MET 1023HIS',15,'CED','12855711','http://www.pdb.org/pdb/explore/explore.do?structureId=2ADF','http://www.ncbi.nlm.nih.gov/pubmed/12855711'),(8,'2ADF','AA008',' CMTSPWRC\r\nCRTSPWRC\r\nCYRSPWRC','A','LH',' 975ILE 976THR 977THR 978ILE 979ASP 981PRO 982TRP 983ASN 1009ASP 1012GLY 1013PHE 1016ARG 1017TR 1022MET 1023HIS',15,'CED','12855711','http://www.pdb.org/pdb/explore/explore.do?structureId=2ADF','http://www.ncbi.nlm.nih.gov/pubmed/12855711'),(9,'1IQD','AA009','CMKWSNRSSRWC(1)\r\nCGRWFNRSDLHC(1)\r\nCSKWHNRSKRHC(1)\r\nCSKWANRLVSIC(1)\r\nQCSKWVNRSRCA(3)\r\nNCGKWTNRRTCL(1)\r\nQCSRWSNRTSCT(2)\r\nKCSRWTNRHLCD(2)\r\nKCTRWTNRHLCS(2)\r\nKCTRWTNRAHCP(13)\r\nECTRWSNRSRCF(3)\r\nQCGRWSNRSYCS(4)\r\nKCGRWSNRSSCT(8)\r\nTCHRWGNRTSCQ(2)\r\nQCHRWANRISCS(1)\r\nQCHTWSNRRSCL(13)\r\nACTTWSNRSKCP(4)\r\nRCTQWTNRAYCP(1)\r\nACTQWSNRHMCG(1)\r\nSCHAWSNRRTCR(2)\r\nRCHAWSNRKSCV(8)\r\nACHEWSNRSTCT(2)\r\nKCGPWSNRSSCT(1)\r\nTCHPFSNRSTCT(1)\r\nKCEPDDPWPQCI(7)\r\nACKRNHRWGACV(2)\r\nECGSHAWGRRCK(1)','C','AB','2196PHE 2197THR 2198ASN 2199MET 2200PHE 2215ARG 2220ARG 2221PRO 2222GLN 2223VAL 2250SER 2251LEU 2252LEU 2253THR 2315HIS 2316GLN',16,'CED','12676786','http://www.pdb.org/pdb/explore/explore.do?structureId=1IQD','http://www.ncbi.nlm.nih.gov/pubmed/12676786'),(10,'2GHW','AA010','LDSMHFPFHSRSFWP\r\nNLSCTHPLGSPPPAP\r\nGQICYYGRDAYLCFL\r\nCESSLCLMYSLGPPA\r\nQTPPCPIEHCPSFYQ\r\nQSTCLSHPLLCLSWN\r\nPNCWVGLTGAHSCFL\r\nTHSVPVAYPWPDLNA\r\nSPLDYECISHATVCF\r\nYSTPSSILDTHPLYK\r\nTLPPPCLSSPSRCVN\r\nRTMHPSDEFLPLGMP\r\nGTGLVPLFDPRYRFL\r\nSSSRQEPYPLYPLFS\r\nHPKVGEGIDFTSIVP\r\nATDLLAAYPLYSPSL\r\nVVPLGRCVSHPAICA\r\nGFPCLSVASACYGIT','A','B','426ARG 432SER 433THR 436TYR 437ASN 439LYS 440TYR 442TYR 469PRO 470PRO 471ALA 472LEU 473ASN 474CYS 475TYR 476TRP 478LEU 479ASN 480ASP 481TYR 482GLY 484TYR 485THR 486THR 487THR 488GLY 489ILE 491TYR 492GLN',29,'IEDB-3D','16630634','http://www.pdb.org/pdb/explore/explore.do?structureId=2GHW','http://www.ncbi.nlm.nih.gov/pubmed/16630634'),(11,'2GHW','AA011','RSGGCVGGQYCLTPTH\r\nNDWPCLSHTTVCNGTQ\r\nATMPCLSHPSVCKHLY\r\nPMHECLSAPSVCADNY\r\nTELACLSEAYICDRSN\r\nETFTCISAPWTCVTWL\r\nEKMACLSTLDVCMENP\r\nNNMSCLSHETICGRNP\r\nLPFECISKREVCDTPM\r\nSVDDCRWNLNCEPPP \r\nSEVYCPRPDRCLRAP \r\nVQRDCRWTFSCATLI \r\nTPPRCSDQMYCSLSR \r\nTHQFCPDPKHCLAQP \r\nRMPPCMNAGECPTIA \r\nTSNFCPAGGPCSPHG \r\nNPRVCMNKWECEQAI \r\nGPPLGCLSLSCYDVA \r\nWNDYCTMNQCDTHN \r\nKPLHCGDTFCSLNQ \r\nYLEHCTMNECLNAR\r\nNGYHCLSEFCMPHP\r\nSMEECRLWLCPPYE\r\nYKPWCEMNKCKPLA\r\nVMPECLSRLCDFDM\r\nDDMPGCYPMCTLNK\r\nYDSYCIMNFCGHAA\r\nYTAADCPGLLYLCP\r\nNDVRCKLWLCPMPD\r\nNNWPCLNETCPTKG\r\nVQWPCLSKQCNDNI\r\nYQADCLMNRCPTAE\r\nSAPECHLYYCPEQA\r\nANPVCRLWMCPPIV\r\nRQTEPCNLWFCPQV\r\nREPPCVQVHCSTAK\r\nPKEQPWSEFRPAGM\r\nADCTLWFCPQTSN\r\nCLSATCDCTLCGP\r\nFPELTCWTCLASS\r\nPPAYSCLCPWAHM','A','B','426ARG 432SER 433THR 436TYR 437ASN 439LYS 440TYR 442TYR 469PRO 470PRO 471ALA 472LEU 473ASN 474CYS 475TYR 476TRP 478LEU 479ASN 480SP 481TYR 482GLY 484TYR 485THR 486THR 487THR 488GLY 489ILE 491TYR 492GLN',29,'IEDB-3D','16630634','http://www.pdb.org/pdb/explore/explore.do?structureId=2GHW','http://www.ncbi.nlm.nih.gov/pubmed/16630634'),(12,'2NY7','AA012','TCLWSDLRAQCI\r\nREKRWIFSDLTHTCI','G','HL','280ASN 281ALA 365SER 366GLY 367GLY 368ASP 369PRO 371ILE 372VAL 373THR 384TYR 386ASN 417PRO 419ARG 430VAL 431GLY 432LYS 455THR 456ARG 457ASP 469ARG 472GLY 473GLY 474ASP 475MET ',25,'CMA','16940148','http://www.pdb.org/pdb/explore/explore.do?structureId=2NY7','http://www.ncbi.nlm.nih.gov/pubmed/16940148'),(13,'2NY7','AA013','HSFGDLSISPNSLTAWPGTL\r\nWLMRAAWPWDYT\r\nNLRSTSFFELWAKWP\r\nGEFPDWDNLPLLCEG\r\nGRPQWYLQFEDYWRS\r\nDSLRVDEHHEVMVPM\r\nDWVPFFGFFFSRLQLP\r\nNWPRWWEEFVDKHSS\r\nVRFHLAGWLPAVVSFVIFSDH\r\nDGLRSDGSWLARFVFNGSGFY\r\nGNFTASTASWGDELLALY\r\nFVWEEHVGFLMRN\r\nNWPRWEEFVDKHSS\r\nFAHEGSASFRLSSKVEDWVSR\r\nCVFYANVEEEVQCWL\r\nFCVRLMCSGLIPFFVLCCFFA\r\nFSRADFFPLSYSLSSVPSTAL\r\nFSPYPPDIVHTTAFSSFVNPVD\r\nSSFFYSALTPSFPSPYSQSSR\r\nRFFAFPMVCASFFLVAIAFFP\r\nPLPPSRFFITVCLTFLFSLSFF\r\nVRPCVASLLLFFCLLFLLLPS\r\nICFPFNTRYCIFAMMVSSLVF\r\nQQAGSYPGCIDYYYCHASAIG\r\nCLPAYGCKSFREPF\r\nRHFVPLYLSVSYDGFSRGASI\r\nPIIHPHPPRIAMRVSISPFP\r\nTPTDSTVRGSSTMDGFLKSVY\r\nTASFWRSVSFPWVLSFLAFSH\r\nGAQVNRKCAWHPRHI\r\nVAKKLWVPQVSGSNF\r\nHWGVYR','G','HL','280ASN 281ALA 365SER 366GLY 367GLY 368ASP 369PRO 371ILE 372VAL 373THR 384TYR 386ASN 417PRO 419ARG 430VAL 431GLY 432LYS 455THR 456ARG 457ASP 469ARG 472GLY 473GLY 474ASP 475MET ',25,'CMA','16940148','http://www.pdb.org/pdb/explore/explore.do?structureId=2NY7','http://www.ncbi.nlm.nih.gov/pubmed/16940148'),(14,'2NY7','AA014','CWVWSDEYASLMGC\r\nCRVWSDATGGYISC\r\nCRVWSDEHSAQMAC\r\nCERVWSDEHENYTC\r\nCRVWSDEWNSYGDC\r\nCILWSDINDRFISC\r\nCLWSDLLSQYTKPC\r\nCQILWSDVRGKFEC\r\nCPWMWSDILDRAIC\r\nCMWSDYLNRC\r\nCMWSDLYDELVNC\r\nCLYSDLRGTYETPC\r\nCTQIYSDDLQRWTC\r\nCTLVYSDYVGDTIC\r\nCLWDDLYGTYAEGC\r\nCKLWNDESARYTGC\r\nCTLWDDELGRSTHC\r\nCLPAFLYDDREHPC\r\nCLYNVDTGTRSEYC','G','HL','280ASN 281ALA 365SER 366GLY 367GLY 368ASP 369PRO 371ILE 372VAL 373THR 384TYR 386ASN 417PRO 419ARG 430VAL 431GLY 432LYS 455THR 456ARG 457ASP 469ARG 472GLY 473GLY 474ASP 475MET ',25,'CMA','16940148','http://www.pdb.org/pdb/explore/explore.do?structureId=2NY7','http://www.ncbi.nlm.nih.gov/pubmed/16940148'),(15,'1N8Z','AA015','LLGPYELWELSH(25)\r\nHPRPYHHTLPLT(1)','C','AB','557PRO 558GLU 559ALA 560ASP 561GLN 570ASP 571PRO 572PRO 573PHE 593LYS 594PHE 595PRO 596ASP 597GLU 598GLU 599GLY 600ALA 601CYS 602GLN 603PRO',20,'CED','15536075','http://www.pdb.org/pdb/explore/explore.do?structureId=1N8Z','http://www.ncbi.nlm.nih.gov/pubmed/15536075'),(16,'1G9M','AA016','SGLRNETFLR\r\nEFFQQHMLRVPR\r\nNMKLKLREMTQR\r\nMTRPTSLTQLTG\r\nLHIRVNETAYRV\r\nDFLREHGMKNPR\r\nRSRPTNMTTLRD\r\nAAYNATRGTVSA\r\nQLLHTWEDKMRK\r\nRNGELWLRRPGL\r\nMVRPSNWDALTR','G','LH','119CYS 121LYS 200VAL 202THR 203LN 204ALA 205CYS 419ARG 421LYS 422GLN 423ILE 432LYS 434MET 435TYR 437PRO',15,'CED','14596802','http://www.pdb.org/pdb/explore/explore.do?structureId=1G9M','http://www.ncbi.nlm.nih.gov/pubmed/14596802'),(17,'1E6J','AA017','CAHFPPRSQMIADC\r\nCAHFAPGTAMYSDC\r\nCRQFPHSSSMYTDC\r\nCRESRAALERGWWC\r\nCEARTHNEARRRRC\r\nCAAARSTGETSAHC\r\nCYYRMGANYTVGEC\r\nCSVSPLYAYDDPLC\r\nCTQMHEMDPNFPPC\r\nCVTALGPNYTGQEC\r\nCYVQQPWWVLEREC\r\nCADVMGPLVTAAEC\r\nCADVMGPLVTAGEC\r\nCVVFLDVSEAFRDC\r\nVWRCNWF\r\nAASWNGR','P','LH','204ALA 205LEU 206GLY 207PRO 208ALA 209ALA 210THR 212GLU 213GLU 216THR 217ALA',11,'CED','14596802','http://www.pdb.org/pdb/explore/explore.do?structureId=1E6J','http://www.ncbi.nlm.nih.gov/pubmed/14596802'),(18,'2OSL','AA018','QDKLTQWPKWLE(8)\r\nDDNTKQWPSWLE(2)\r\nDRAQLTWPAWLE(2)\r\nSPYQYSWPTWLE(1)\r\nSTNMGAWPWWLE(1)\r\nHEENDLRWWFIH(2)\r\nNMSIQWHRDFNK(4)','P','L','168GLU 169PRO 170ALA 171ASN \r\n\r\n',4,'CMA','16814270','http://www.pdb.org/pdb/explore/explore.do?structureId=2OSL','http://www.ncbi.nlm.nih.gov/pubmed/16814270'),(19,'1ZTX','AA019','ACNMLRWDKTIPCR\r\nSCTSPVSQGTQPCK\r\nVCPHVAPYQTPLCK\r\nRCRKVLICRRICP\r\nCCTMPNCTLYVLCE\r\nVCEHPENKAPPCCP\r\nSCRLSTFSMRMVCN\r\nVCPTSEILAGATCR\r\nRCGPASREKHALCT\r\nVCAKGPPQLPRCP\r\nGCAIPQNAIRPPCS\r\nSCSPTVYLTSTKCP\r\nTCCLCSGKLALACE\r\nTCPLPDPDSQYCE\r\nRCQALSRLFREKCT\r\nFCPGVGRYPVRQCY\r\nDCQVRRCSRDSHCE\r\nNCQTKVTRITESCC\r\nPCSRAETNPTMQCP\r\nYCPPPLLNSGEPCS\r\nTCKQLKAHPPLACM\r\nSCTYSGRADAVVCR','E','HL','302TYR 306SER 307LYS 308ALA 309PHE 330THR 331GLY 332THR 333ASP 389GLY 390GLU 391GLN 365ALA 366THR 367ALA 368ASN',16,'CMA','18760481','http://www.pdb.org/pdb/explore/explore.do?structureId=1ZTX','http://www.ncbi.nlm.nih.gov/pubmed/18760481'),(20,'1N8Z','AA020','CGWASGMADGSSNC\r\nCAGWKTGEADGSSC\r\nCGWTSGKSDGSASC\r\nCTSLVADLDHLSSC\r\nCPNIGELSHYDPFC\r\nCAAWHTGKAEGNGC\r\nCAGRWEHGTAEGDC\r\nCTLWVLGLADGTRC','C','AB','560ASP 569LYS 571PRO 572PRO 596ASP 598GLU 600ALA 602GLN 603PRO 604CYS 557PRO 558GLU 561GLN 570ASP 573PHE 591ILE 593LYS ',17,'CMA','17427229','http://www.pdb.org/pdb/explore/explore.do?structureId=1N8Z','http://www.ncbi.nlm.nih.gov/pubmed/17427229'),(21,'2NY7','AA021','GCLYSDLLATCI\r\nNCLYSDLTQSCI\r\nNCLYSDLYARCI\r\nKCMYSDLLGICI\r\nDCLYSDLESRCI\r\nSCLYSDLLELCI\r\nECMWSDLELRCI\r\nNCLWSDLEQFCI','G','H','280ASN 281ALA 365SER 366GLY 367GLY 368ASP 369PRO 371ILE 372VAL 373THR 384TYR 386ASN 417PRO 419ARG 430VAL 431GLY 432LYS 455THR 456ARG 457ASP 469ARG 472GLY 473GLY 474ASP 475MET ',25,'CMA','11413337','http://www.pdb.org/pdb/explore/explore.do?structureId=2NY7','http://www.ncbi.nlm.nih.gov/pubmed/11413337'),(22,'2NY7','AA022','HERSYMFSDLENRCI\r\nCSRNQLWSDLHGSCI\r\nNNQGCLWSDLTASCI\r\nSTTRCTWSDLYDSCI\r\nQSSSCMWSDLFQQCI\r\nAQKQCTWSDLLSRCI\r\nRPCRGVYSDLLDKCI\r\nSSDHCLWSDLTMTCI\r\nLPSSCSWSDLLNRCI\r\nHTCAGTWSDLLSTCI','G','H','280ASN 281ALA 365SER 366GLY 367GLY 368ASP 369PRO 371ILE 372VAL 373THR 384TYR 386ASN 417PRO 419ARG 430VAL 431GLY 432LYS 455THR 456ARG 457ASP 469ARG 472GLY 473GLY 474ASP 475MET ',25,'CMA','11413337','http://www.pdb.org/pdb/explore/explore.do?structureId=2NY7','http://www.ncbi.nlm.nih.gov/pubmed/11413337'),(23,'2AJF','AA023','LDSMHFPFHSRSFWP\r\nNLSCTHPLGSPPPAP\r\nGQICYYGRDAYLCFL\r\nCESSLCLMYSLGPPA\r\nQTPPCPIEHCPSFYQ\r\nQSTCLSHPLLCLSWN\r\nPNCWVGLTGAHSCFL\r\nTHSVPVAYPWPDLNA\r\nSPLDYECISHATVCF\r\nYSTPSSILDTHPLYK\r\nTLPPPCLSSPSRCVN\r\nRTMHPSDEFLPLGMP\r\nGTGLVPLFDPRYRFL\r\nSSSRQEPYPLYPLFS\r\nHPKVGEGIDFTSIVP\r\nATDLLAAYPLYSPSL\r\nVVPLGRCVSHPAICA\r\nGFPCLSVASACYGIT','A','E','24GLN 27THR 28PHE 31LYS 34HIS 37GLU 38ASP 41TYR 42GLN 45LEU 79LEU 82MET 83TYR 325GLN 329GLU 330ASN 353LYS 354GLY 355ASP 357ARG',20,'CMA','1116480','http://www.pdb.org/pdb/explore/explore.do?structureId=2AJF','http://www.ncbi.nlm.nih.gov/pubmed/1116480'),(24,'1BJ1','AA024','YDFTHY?EFQHY\r\nYEFTHY?DFGHY\r\nYDFSHY?EFSHY\r\nTWTGE?WTGT\r\nTWTGQ?TWT\r\nNTWD?YRNAS\r\nYYTTRS?YEGSS\r\nYYRQRG?YTGRS\r\nYYTNTS?YRKGS\r\nYYTGSS?YRSGS\r\nYYTNRS?YRNSS\r\nYYKESS?YRDAS\r\nYYRQKS?YKGGS\r\nYYYGAS?YRGES\r\nYYRSTS?YRNTS\r\nYYYGTS?YRGTS\r\nYYINKS?YYNQS\r\nYYIAKS?YRDNS\r\nYYWGTS?YRQNS\r\nYYRQSS?YKNTS\r\nYYIERS','W','LH','17PHE 21TYR 45TR 48LYS 79GLN 80ILE 81MET 82ARG 83ILE 84LYS 86HIS 87GLN 88GLY 89GLN 90HIS 91ILE 92GLY 93GLU 94MET',19,'CED','10543973','http://www.pdb.org/pdb/explore/explore.do?structureId=1BJ1','http://www.ncbi.nlm.nih.gov/pubmed/10543973'),(25,'1JRH','AA025','EHKWY?VKSY\r\nENKWY?AKSY\r\nEEKRH?AKSY\r\nAVKEY?AKEY\r\nEAKNY?GKWY \r\nEVKSY?TKVY \r\nEEKSY?HKVY \r\nEQKFY EMKTY \r\nKVKNY?NKWH \r\nGVKIH?LKTY \r\nSVKSY IAKSY \r\nLVKTY YGVKN \r\nYGTKN?GYKN \r\nHGVKN YGHKN \r\nYGLKN HGLKN \r\nNSPWR NGGWR \r\nNSPWL NTPWS \r\nNAPWT NGPWK \r\nNPRWQ NSPWV \r\nNSPWA NSPWS \r\nNSPWF?TPWV \r\nNAPPN?APWE \r\nNGPWV NGPWR \r\nNSVFH?PSWS \r\nNPTWT?PTWQ \r\nNPTYR?PAYR \r\nNPGWV?PRWM \r\nNGLWT NGDYE \r\nNGSWR?GYYE \r\nNGTWR','I','LH','47LYS 48ASN 49TYR 50GLY 51VAL 52LYS 53ASN 54SER 55GLU 56TRP 76ASP 77PRO 78SER 79ASN 80SER 81LEU 82TRP 83VAL 84ARG 98LYS 99SER',21,'CED','11123892','http://www.pdb.org/pdb/explore/explore.do?structureId=1JRH','http://www.ncbi.nlm.nih.gov/pubmed/11123892');

UNLOCK TABLES;

/*Table structure for table `classes` */

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classes` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `classes` */

LOCK TABLES `classes` WRITE;

insert  into `classes`(`id`,`classes`) values (1,'多元矩阵分析'),(2,'模式识别'),(3,'生物信息学'),(4,'生物序列分析'),(5,'生物信息学算法导论'),(6,'智能算法分析与应用'),(7,'Perl语言入门'),(8,'软件工程'),(9,'数据结构'),(10,'计算机网络'),(11,'C程序设计语言'),(12,'实用数据库技术'),(13,'计算机公共基础'),(14,'C++程序设计语言'),(15,'Java程序设计语言'),(16,'计算机程序的结构与解释');

UNLOCK TABLES;

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` text,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `contact` */

LOCK TABLES `contact` WRITE;

insert  into `contact`(`id`,`content`,`email`) values (1,'The benchmark datasets has been compiled partly by manual, and errors will have occurred during the data accumulation phase. If you find any error in the datasets, or if you find any published available data not included in the datasets, please let us know. Any other problems or questions, do not hesitate to contact us. We appreciate your feedback very much. It will certainly help us make the benchmark datasets better for the scientific community of B-cell epitope prediction research.','bioinfojz@yeah.net');

UNLOCK TABLES;

/*Table structure for table `datasets` */

DROP TABLE IF EXISTS `datasets`;

CREATE TABLE `datasets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `list` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `datasets` */

LOCK TABLES `datasets` WRITE;

insert  into `datasets`(`id`,`list`,`link`) values (1,'Mimotope Benchmark D','HomeServlet');

UNLOCK TABLES;

/*Table structure for table `download` */

DROP TABLE IF EXISTS `download`;

CREATE TABLE `download` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `download` */

LOCK TABLES `download` WRITE;

insert  into `download`(`id`,`name`,`size`,`version`,`time`) values (1,'Benchmark2.0-AA.rar','2.5','2.0','2012-11-18'),(2,'Benchmark2.0-PP.rar','2.5','2.0','2012-11-18'),(3,'Benchmark2.0-representative.rar','2.5','2.0','2012-11-18');

UNLOCK TABLES;

/*Table structure for table `help` */

DROP TABLE IF EXISTS `help`;

CREATE TABLE `help` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `introduction` text,
  `inclusion` text,
  `acknowledgments` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `help` */

LOCK TABLES `help` WRITE;

insert  into `help`(`id`,`introduction`,`inclusion`,`acknowledgments`) values (1,'This mimotope benchmark datasets is specially for conformational B-cell epitope prediction using random peptide library screening.It conclude the complex structure, the template chain, the mimotopes obtained from corresponding phage display expriment and the epitope information for each data. All entries are extracted from published peer review articles and other public data sources such as MimoDB、PDB and IEDB, as well as some usefull tools as CMA and Pep-3D-Search.','(1)For the data that from MimoDB, if it has several corresponding complex structures in the PDB, we selected the one with the latest released date and the highest resolution; if the sets whose whole information is the same but the round of biopanning, the last round one is retained while the others are excluded; if the sets have all the same data, they were combined as one independent set, and the mimotope sequences of these sets were combined;<br/>\r\n(2)For all the data, If a template-target complex structure has several pairs of template and target chains with the same structure and binding sites, only one pair was selected and the template chain was extracted;<br/>\r\n(3)The determination of epitopes is by CED、IEDB and CMA(the threshold is set 1?2 ), and the extraction of target chain is by Pep-3D-Search.','Mimotope benchmark datasets for conformational B-cell epitope prediction using random peptide library screening is mainly supported by School of Computer Science and Information Technology,Northeast Normal University, Changchun, P.R.China, the Fundamental Research Funds for the Central Universities(12QNJJ005).');

UNLOCK TABLES;

/*Table structure for table `home` */

DROP TABLE IF EXISTS `home`;

CREATE TABLE `home` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `home_content` text,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `home` */

LOCK TABLES `home` WRITE;

insert  into `home`(`id`,`home_content`,`title`) values (1,'<p>东北师范大学计算机科学与信息技术学院生物信息学科研团队创立于2003年。团队创始初期，团队创始人马志强老师一方面积极联系与外界的合作，先后尝试与吉林大学农学部、东北师范大学生科院以及澳大利亚中央昆士兰大学William Guo教授开展合作；另一方面，鼓励团队成员积极去外面参加学术会议、短期学习以及国际交流。目前，团队已经确立了较为明确固定的研究课题。多个研究成果已经发表在生物信息学核心期刊《Plos ONE》以及《BMC Bioinformatics》上。</p> <p>  自创立之日起，团队创始人与各成员团结奋进，勇于创新，取得了一系列科研成果。至2013年，团队先后完成了国家自然科学基金、教育部、吉林省科技厅以及吉林省人事厅等项目10余项；发表论文60余篇，其中SCI检索论文40余篇。几年间，团队培养博士研究生2名，硕士研究生30余名，另有一名硕士研究生出国继续深造。</p> <p>   今后，团队将继续努力工作，争取做出更多更好的研究成果。为我国生物信息学的发展做出贡献！</p>','东北师范大学生物信息学简介');

UNLOCK TABLES;

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` tinytext,
  `publictime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `news` */

LOCK TABLES `news` WRITE;

insert  into `news`(`id`,`title`,`content`,`publictime`) values (1,'2008年度“CCTV杯”全国英语演讲大赛东北师范大学赛区选拔赛圆满结束','2008年度“CCTV杯”全国英语演讲大赛东北师范大学赛区选拔赛圆满结束','2013-06-27 22:44:25'),(2,'吉林省哲学社会科学规划基金办公室主任、研究员金中祥为师生作《社会科学基金项目申报讲座》','吉林省哲学社会科学规划基金办公室主任、研究员金中祥为师生作《社会科学基金项目申报讲座》','2013-06-27 22:44:59');

UNLOCK TABLES;

/*Table structure for table `papers` */

DROP TABLE IF EXISTS `papers`;

CREATE TABLE `papers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `year` int(10) DEFAULT NULL,
  `list` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_papers` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `papers` */

LOCK TABLES `papers` WRITE;

insert  into `papers`(`id`,`year`,`list`) values (4,1,'XW Zhao, XT Li, ZQ Ma*, MH Yin*. Identify DNA-binding proteins with optimal Chou’s amino acid composition. PROTEIN PEPTIDE LETT. 2012, 19(4),398-405.'),(5,1,'XW Zhao, ZQ Ma*, MH Yin*.Using support vector machine and evolutionary profiles to predict antifreeze protein sequences. INTERNATIONAL JOURNAL OF MOLECULAR SCIENCES.2012, 13(2), 2196-2207.'),(6,1,'XW Zhao, Z Q Ma*, MH Yin*. Predicting Protein-Protein Interactions by Combing Various Sequence-Derived Features into the General Form of Chou’s Pseudo Amino Acid Composition. Protein & Peptide Letters, 2012, 19, 492-500.( SCI, IF:1.942)'),(7,2,'[2]XW Zhao, WY Zhang, Xin Xu, ZQ Ma*, MH Yin*. Prediction of Protein Phosphorylation Sites by Using the Composition of k-Spaced Amino Acid Pairs. PLoS ONE. 2012, 10(7). e46302-1-8.'),(9,2,'XW Zhao, XT Li, ZQ Ma* and MH Yin*. Prediction of Lysine Ubiquitylation with Ensemble Classifier and Feature Selection. Int. J. Mol. Sc 2011; 12(12): 8347-8361.(SCI, IF:2.279)'),(10,2,'PP  Sun, WH Chen, YX Huang*, HY Wang, ZQ Ma*, YH Lv*. Epitope prediction based on random peptide library screening: Benchmark datasets and prediction tools evaluation. Molecules 2011; 16(6): 4971-4993. (SCI, IF: 1.988)'),(11,0,'sssssssssssssssssssssssss'),(12,0,'sssssssssssssssssssssssss'),(13,10,'ssssssssssssssssssssss'),(14,10,'ssssssssssssssssssssss');

UNLOCK TABLES;

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `list` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `project` */

LOCK TABLES `project` WRITE;

insert  into `project`(`id`,`list`) values (1,'基于本体 的主题爬行建模与方法研究'),(2,'基于计算智能的微生物基因组功能注释算法研究'),(3,'关于进化算法运行机理分析与应用的研究'),(4,'基因调控网络的建模与推断'),(5,'基于计算智能与信息融合的B细胞表位预测研究'),(6,'基于噬菌体展示库的B细胞构象性表位预测算法及其应用研究'),(7,'基于抗原结构特征和噬菌体组合肽库筛选的B细胞表位预测研究'),(8,'基于噬菌体组合肽库筛选的高精度B细胞表位预测算法研究'),(9,'细胞凋亡信号转导网络的计算建模研究'),(10,'细胞凋亡信号转导网络多尺度建模及其在新抗肿瘤药物靶标识别方面的应用研究'),(11,'基于药效团和定量构效关系模型的计算机虚拟筛选平台'),(12,'');

UNLOCK TABLES;

/*Table structure for table `protein` */

DROP TABLE IF EXISTS `protein`;

CREATE TABLE `protein` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `benchid` varchar(20) DEFAULT NULL,
  `pdb_id` varchar(20) DEFAULT NULL,
  `mimotopes` varchar(1000) DEFAULT NULL,
  `tem_c_No` varchar(10) DEFAULT NULL,
  `tar_c_No` varchar(10) DEFAULT NULL,
  `epitopes` varchar(1000) DEFAULT NULL,
  `size_e` int(10) DEFAULT NULL,
  `ref` varchar(20) DEFAULT NULL,
  `PMID` varchar(20) DEFAULT NULL,
  `pdblink` varchar(100) DEFAULT NULL,
  `pmlink` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `protein` */

LOCK TABLES `protein` WRITE;

insert  into `protein`(`id`,`benchid`,`pdb_id`,`mimotopes`,`tem_c_No`,`tar_c_No`,`epitopes`,`size_e`,`ref`,`PMID`,`pdblink`,`pmlink`) values (1,'1AVZ','PP001','IQHRLLPPIP\r\nRLLKPLPPIP\r\nQSRRSLPPIP\r\nAKRAPLPPIP\r\nTGGRPLPPIP\r\nHHIRPLPPIP\r\nSYPRPLPPIP\r\nHSTRALPPIP\r\nRSLRPLPPLPFD\r\nRSLRPLPPPPFP\r\nRSLRPLPPLPVP\r\nRSLRPLPPLPWT\r\nRSLRPLPPLPPL\r\nRSLRPLPPIPGR\r\nRSLRPLPPIPPP\r\nRSLRPLPPLPAP\r\nRSLRPLPPIPLG\r\nRSLRPLPPIPDS','B','C','71THR 72PRO 73GLN 74VAL 75PRO 76LEU 77ARG 82LYS 83ALA 86ASP 87LEU 90PHE 113TRP 117THR 118GLN 120TYR',16,'CMA CED','7988556','http://www.pdb.org/pdb/explore/explore.do?structureId=1AVZ','http://www.ncbi.nlm.nih.gov/pubmed/7988556'),(2,'1OC0','PP002','CDPPCFGWCQDA(2)\r\nCDVPCFGWCVAWC(12)\r\nCQGGCRVQCFGFC(1)\r\nCTGACPVVCFGFC(1)\r\nILCFGMC(1)\r\nCEGVCRVSCFGWC(3)\r\nCDVPCFGWCVSWC(1)\r\nCVCFGYCRYEC(1)\r\nCHILCFGYCGDLC(1)\r\nCEGKCVVSCFGFC(1)','B','A','10THR 12GLY 13PHE 20GLN 22ASP 23GLU 24LEU 27TYR 28TYR 29GLN 30SER',11,'CMA','16813566','http://www.pdb.org/pdb/explore/explore.do?structureId=1OC0','http://www.ncbi.nlm.nih.gov/pubmed/16813566'),(3,'1HX1','PP003','SIEVLRGAMHVAPRR(1)\r\nGGWYDRKHRRPAPLS(1)\r\nKFFRKKSHYHSRTTS(1)\r\nFLDERNYIKKKRHKL(5)\r\nRRGDHDHDIFHWWVH(11)\r\nFDGVRKKSRGKSLEY(15)\r\nKKKRHDVEIPHVRAS(18)\r\nMDDRGLLLVKKKKHG(24)','B','A','205ARG 208LYS 209ALA 211ILE 212GLU 215MET 216LYS 218LEU 219GLU 222ASP 223THR 224LEU 225ILE 226LEU 234ARG 237ARG 238LYS 241VAL 242LYS 245GLN 252ASP',21,'CMA','7649995','http://www.pdb.org/pdb/explore/explore.do?structureId=1HX1','http://www.ncbi.nlm.nih.gov/pubmed/7649995'),(4,'1WLP','PP004','LTVQARPVG(1)\r\nHQARPPWTV(3)\r\nSFQWRPWHI(1)\r\nWHQNRGGQA(1) \r\nLGQRTPKSY(2)\r\nSHKQTGPG(1)\r\nHWNQPRWSS(1)\r\nHQQLPTRWD(1)\r\nFHLGTWRPG(1)\r\nVQAHGWGRP(1)\r\nQLTDAIRQH(3)\r\nYHKRPVGTP(1)\r\nLVQRYDHRT(1)\r\nDWRTPLQQH(1)\r\nRSLNLQDFN(1)\r\nRFSVETQI(1)\r\nHHRHSPDNL(3)\r\nASAEKAHRR(1)\r\nATQQYRGHS(1)\r\nTRHDYRQVL(1)\r\nVLSYRWDNW(1)\r\nFVGYRPAQW(1)\r\nHYRTLGDHR(1)\r\nGKVHHRNSS(1)\r\nSAWGRNWHN(3)\r\nAQGGRNQHW(1)\r\nMRNVTERHV(1)\r\nTSMLRNTSS(1)\r\nKRNWMNHGF(1)\r\nHSNSRSAQV(1)\r\nSNGHSVRQM(1)\r\nTSDRLLTIK(1)','B','A','164ILE 165ALA 167TYR 170THR 171SER 173SER 174GLU 186VAL 187GLU 191SER 192GLY 193TRP 195PHE 202ARG 204TRP 206PRO 207ALA 208SER 209PHE 241GLU 243ASP 244GLU 261ASP 262GLY 263TRP 274TYR 276PRO 278MET 279TYR ',29,'CMA','7592831','http://www.pdb.org/pdb/explore/explore.do?structureId=1WLP','http://www.ncbi.nlm.nih.gov/pubmed/7592831'),(5,'1WLP','PP005','GGPPRV(1)\r\nFTKKIYGPP(1)\r\nYLDGGP(1)\r\nHGMKFPGPA(1)\r\nTQQRGP(1)\r\nLMVKPREKHW(1)\r\nKWHKNHPP(1)\r\nFTWPRW(1)\r\nAHKHWRPRT(1)','A','B','5SER 6LYS 7GLN 8PRO 9PRO 10SER 11ASN 12PRO 13PRO 14PRO 15ARG 16PRO 17PRO 19GLU 20ALA',15,'CMA','7624379','http://www.pdb.org/pdb/explore/explore.do?structureId=1WLP','http://www.ncbi.nlm.nih.gov/pubmed/7624379'),(6,'1K4U','PP006','PRPEWRVHW\r\nPKAGGARPTW\r\nRRPTMMKHT\r\nPPGGTRPTGIQF\r\nPPGKLPSYRPYM\r\nMGVGAKRPG\r\nPPGTPPNRNS\r\nEVPPGV\r\nPPGDTVYRPIHW\r\nLERTRQPLPGPP\r\nPPGWRAPRL\r\nATSGDAYWS\r\nMDAYDKISK\r\nGADMDRRIS\r\nWYDAKMRHS\r\nRRQEVTYSW\r\nVRYYDDYHR\r\nQLELDAQRG\r\nGFPWQKAYM\r\nHVDWRNSWR\r\nLETPPNRNS\r\nDHRLGSRNS\r\nGHLSSRNFV\r\nSQHWLSMWS\r\nLGQVEYMRR\r\nNGYRKQDGE\r\nDYFVNSRHN\r\nSFLVQTAKQ\r\nKLPSYRPYM\r\nLPWRMSGHV\r\nWSWWRNTHE\r\nTHMWRN \r\nAPVAGVRHN\r\nDWERFSWPY\r\nRFDRAGSRD\r\nARWDFLRS \r\nRAEAQYSVV','S','P','465LEU 466PHE 467SER 468TYR 469GLU 471THR 472GLN 473PRO 474GLU 475ASP 476LEU 480GLU 487LEU 488SER 489LYS 490VAL 491ASN 492GLU 493GLU 494TRP 496GLU 497GLY 502LYS 503VAL 504GLY 505ILE 507PRO 509VAL 510PHE ',29,'CMA','8663333','http://www.pdb.org/pdb/explore/explore.do?structureId=1K4U','http://www.ncbi.nlm.nih.gov/pubmed/8663333'),(7,'2GRX','PP007','NLLPTYTPLKLM\r\nHSNLPTKRPTSL\r\nCPNGLLGPCPSL\r\nKVWSLEPPGPAA\r\nTQPLGLLPSRHL\r\nIPHHHTLNMESH\r\nKPPSTWPQNALH\r\nLETRTTPPAKSQ\r\nKLVDESSTSPLS\r\nAGMATSRSTSPL\r\nKHVPVHSALSVN\r\nLEPQINSVGMVR','A','C','8THR 9ILE 10THR 11VAL 12THR 13ALA 14ALA 15PRO 16ALA 26ALA 27THR 56GLU 159GLU 160PRO 542ASP 544PRO 588ALA 590SER 591ALA 594ASN 634PHE 639SER 676ASP 683ALA 684GLY 724ARG 725PHE',27,'CMA','16414071','http://www.pdb.org/pdb/explore/explore.do?structureId=2GRX','http://www.ncbi.nlm.nih.gov/pubmed/16414071'),(8,'2GRX','PP008','CILAALSAC\r\nCLPTGGLLC\r\nCLTRSPAAC\r\nCKSAFLPWC\r\nCTKPLTQQC\r\nCLAALKSTC','A','C','8THR 9ILE 10THR 11VAL 12THR 13ALA 14ALA 15PRO 16ALA 26ALA 27THR 56GLU 159GLU 160PRO 542ASP 544PRO 588ALA 590SER 591ALA 594ASN 634PHE 639SER 676ASP 683ALA 684GLY 724ARG 725PHE',27,'CMA','16414071','http://www.pdb.org/pdb/explore/explore.do?structureId=2GRX','http://www.ncbi.nlm.nih.gov/pubmed/16414071'),(9,'2GSK','PP009','TMGFTAPRFPHY\r\nKLVDESSTSPLS','A','B','5PRO 6ASP 7THR 8LEU 9VAL 10VAL 11THR 12ALA 13ASN 16GLU 18PRO 22VAL 32GLN 305ILE 307GLY 308HIS 309GLY 345LEU 347GLN 352THR 382GLY 384ARG 386ILE 423GLU 424GLY 425LEU 428GLY 430ASN 469ASN 471ASP 473GLY 474PRO 475LEU 476THR ',34,'CMA','16414071','http://www.pdb.org/pdb/explore/explore.do?structureId=2GSK','http://www.ncbi.nlm.nih.gov/pubmed/16414071'),(10,'2GSK','PP010','CTKPLTQQC\r\nCTGPLPNRC\r\nCSPRTTPFC\r\nCMLEKPRLC\r\nCNQPRGPQC\r\nCLTQTPTRC','A ','B','5PRO 6ASP 7THR 8LEU 9VAL 10VAL 11THR 12ALA 13ASN 16GLU 18PRO 22VAL 32GLN 305ILE 307GLY 308HIS 309GLY 345LEU 347GLN 352THR 382GLY 384ARG 386ILE 423GLU 424GLY 425LEU 428GLY 430ASN 469ASN 471ASP 473GLY 474PRO 475LEU 476THR ',34,'CMA','16414071','http://www.pdb.org/pdb/explore/explore.do?structureId=2GSK','http://www.ncbi.nlm.nih.gov/pubmed/16414071'),(11,'1FLT','PP011','WHKPFRF(3)\r\nWHLPFKC(6)\r\nHSLRTTF(1)\r\nLPKRSPI(1)','X','VW','142ILE 145ILE 147HIS 221LEU 223HIS 225GLN 141GLU 143PRO 171LYS 172PHE 173PRO 199TYR 200LYS 203GLY 204LEU 219ASN 224ARG ',17,'CMA ','17401149','http://www.pdb.org/pdb/explore/explore.do?structureId=1FLT','http://www.ncbi.nlm.nih.gov/pubmed/17401149'),(12,'3DOW','PP012','SHKSDWIFLPNA(3)\r\nGHLSDWVYVPMR(5)\r\nVSMDDGWVFVQP(4)\r\nAHKSDNWVFLPE(1)\r\nTHINEKWVFLPQ(1)','B','A ','5ASP 6TRP 7ASP 8PHE 9LEU 10PRO 11PRO ',7,'CMA','17916189','http://www.pdb.org/pdb/explore/explore.do?structureId=3DOW','http://www.ncbi.nlm.nih.gov/pubmed/17916189'),(13,'1SHY','PP013','QHKTSITGHHLEP\r\nTLPSPLALLTVH\r\nYLFSVHWPPLKA','A ','B','513TYR 516LYS 533ARG 534GLN 537PRO 578ASP 619TYR 647ARG 649LYS 656GLU 669CYS 670GLU 673TYR 692VAL 693PRO 694GLY 695ARG 696GLY 697CYS 699ILE 702ARG 705ILE',22,'CMA','17947467','http://www.pdb.org/pdb/explore/explore.do?structureId=1SHY','http://www.ncbi.nlm.nih.gov/pubmed/17947467'),(14,'1SQ0','PP014','CSERQALHGWC\r\nCDEKRALHNLC','A','B','512LEU 549LYS 550TRP 561GLY 562SER 563HIS 564ALA 565TYR 571ARG 572LYS 580ILE 596GLU 599LYS 600TYR 603PHE 604GLN 611ARG 613GLU 632ARG ',19,'CMA','18363340','http://www.pdb.org/pdb/explore/explore.do?structureId=1SQ0','http://www.ncbi.nlm.nih.gov/pubmed/18363340'),(15,'1SQ0','PP015','CNERAALWNLC\r\nCTERWALHNLC\r\nCESRWWLRNAC','A','B','512LEU 549LYS 550TRP 561GLY 562SER 563HIS 564ALA 565TYR 571ARG 572LYS 580ILE 596GLU 599LYS 600TYR 603PHE 604GLN 611ARG 613GLU 632ARG ',19,'CMA','18363340','http://www.pdb.org/pdb/explore/explore.do?structureId=1SQ0','http://www.ncbi.nlm.nih.gov/pubmed/18363340'),(16,'1D4V','PP016','CKVILTHRC(2)\r\nCKVALTLRC(5)\r\nCLVYLTQRC(3)\r\nCIVYLTQKC(3)\r\nCILYLTQKC(1)\r\nCKLAMTMKC(3)\r\nCFLVMSQRC(1)\r\nCLWFPREQC(2)\r\nCMLPLYFPC(1)\r\nCELPRSPSC(1)\r\nCTVPAFPAC(1)\r\nCTNSAMADC(1)\r\nCKHEPTPNC(1)','B','A','130ARG 132ARG 155GLU 158ARG 159SER 160GLY 161HIS 189TYR 191ARG 193GLN 236GLU 237TYR 239LEU ',13,'CMA','','http://www.pdb.org/pdb/explore/explore.do?structureId=1D4V',''),(17,'3BT1','PP017','PMPHSLNFSQYLWYT(11)\r\nHTYSSLWDTYSPLAF(8)\r\nLDLWMRHYPLSFSNR(1)\r\nSSLWTRYAWPSMPSY(5)\r\nWHPGLSFGSYLWSKT(6)\r\nPALLNWSFFFNPGLH(1)\r\nWSFYNLHLPEPQTIF(2)\r\nPLDLWSLYSLPPLAM(2)\r\nPTLWQLYQFPLRLSG(1)\r\nISFSELMWLRSTPAF(1)\r\nLSEADLWTTWFGMGS(1)\r\nSSLWRIFSPSALMMS(1)\r\nSLPTLTSILWGKESV(1)\r\nTLFMDLWHDKHILLT(4)\r\nILNFPLWHEPLWSTE(2)\r\nSQTGTLNTLFWNTLR(8)\r\nIKTDEKMGLWDLYSM(1)\r\nMHRSLWEWYVPNQSA(9)\r\nSHIKSLLDSSTWFLP(1)','A','U','185GLU 186ASN 187LEU 188PRO 189GLN 190ASN 191GLY 192ARG 217GLY 218PRO 220ASN 267THR 269SER',13,'CED','','http://www.pdb.org/pdb/explore/explore.do?structureId=3BT1',''),(18,'1MQ8','PP018','EWCEYLGGYLRYCA(38)','B','A','139SER 140MET 141SER 143GLN 175THR 204LEU 205LEU 206THR 207ASN 241GLU 242ALA 243THR 244ASP 245SER 264HIS ',15,'CMA','8953648','http://www.pdb.org/pdb/explore/explore.do?structureId=1MQ8','http://www.ncbi.nlm.nih.gov/pubmed/8953648'),(19,'3EZE','PP019','RLHYLF\r\nRHWSIF\r\nRHRTLF\r\nRHYLLF\r\nMSRHRN\r\nRHITLF\r\nRHITSL\r\nRLHTLF\r\nRHFTSL\r\nRHHTLL\r\nDGARLH','B','A','314LEU 315HIS 316THR 317ARG 319ALA 320ALA 321GLN 323VAL 324LYS 327LYS 345LYS 346SER 347LEU 348PHE 349LYS 350LEU 351GLN 352THR 353LEU 354GLY 355LEU',21,'CMA','','http://www.pdb.org/pdb/explore/explore.do?structureId=3EZE',''),(20,'3EZE','PP020','KMSRHRKPGA\r\nSSLRGHRWVY\r\nKISRHGKRGK\r\nKISRHGRPTG\r\nRIHFIPRRGR\r\nNMSRHRKPTG\r\nNMSRHRNPGP\r\nNMSRHRIRPT\r\nNMSRHRNPTG','B','A','314LEU 315HIS 316THR 317ARG 319ALA 320ALA 321GLN 323VAL 324LYS 327LYS 345LYS 346SER 347LEU 348PHE 349LYS 350LEU 351GLN 352THR 353LEU 354GLY 355LEU',21,'CMA','','http://www.pdb.org/pdb/explore/explore.do?structureId=3EZE',''),(21,'3EZE','PP021','GLRFGKTRVHYLVLG\r\nSGRKSTRVHHWLLVL\r\nSGRLSSWVHVGWLVL\r\nGLRLKGTRVHYGWVL\r\nMRLLKSTLCLVSLCG\r\nMRLLKGTLCFVGLCG','B','A','314LEU 315HIS 316THR 317ARG 319ALA 320ALA 321GLN 323VAL 324LYS 327LYS 345LYS 346SER 347LEU 348PHE 349LYS 350LEU 351GLN 352THR 353LEU 354GLY 355LEU',21,'CMA','','http://www.pdb.org/pdb/explore/explore.do?structureId=3EZE',''),(22,'1MQ8','PP022','CLLRMSIC(10)\r\nCRLKSRRNC(3)\r\nCLPPPNRRC(2)\r\nCHTLLKSQC(1)\r\nCRRIKPRIC(1)\r\nCTMLNRNMC(1)\r\nCRLIHLMLC(1)\r\nCIRLRXLRC(1)\r\nCPISNRLIC(1)\r\nCPLMRRILC(1)\r\nCRRNRSRKC(1)\r\nCRTRPKRRC(1)\r\nCKPLMSIRC(1)\r\nCRRLRLHRC(1)','B','A','139SER 140MET 141SER 143GLN 175THR 204LEU 205LEU 206THR 207ASN 241GLU 242ALA 243THR 244ASP 245SER 264HIS ',15,'CMA','11532073','http://www.pdb.org/pdb/explore/explore.do?structureId=1MQ8','http://www.ncbi.nlm.nih.gov/pubmed/11532073'),(23,'1MQ8','PP023','FEGFSFLAFEDFVSSI(2)\r\nRDGWYESVSYWGVIDW(2)\r\nGAEGIEVKYWVDLGWV(1)\r\nFAGAAWHERLGYGHAT(1)\r\nPYRIDAWADVDEMVWM(1)\r\nIFVGAYVVN(1)\r\nFDGFSFLAFEDFVSSI(1)\r\nILGHTWQALGWLVTGR(1)','B','A','139SER 140MET 141SER 143GLN 175THR 204LEU 205LEU 206THR 207ASN 241GLU 242ALA 243THR 244ASP 245SER 264HIS ',15,'CMA','12963036','http://www.pdb.org/pdb/explore/explore.do?structureId=1MQ8','http://www.ncbi.nlm.nih.gov/pubmed/12963036'),(24,'1MQ8','PP024','FEGFSFLAFEDFVSSI(10)','B','A','139SER 140MET 141SER 143GLN 175THR 204LEU 205LEU 206THR 207ASN 241GLU 242ALA 243THR 244ASP 245SER 264HIS ',15,'CMA','12963036','http://www.pdb.org/pdb/explore/explore.do?structureId=1MQ8','http://www.ncbi.nlm.nih.gov/pubmed/12963036'),(25,'1II4','PP025','MQLPPDT\r\nMQTPLAP\r\nMSLPLLP\r\nMTAPPAR\r\nMGNPINH\r\nMQISGHP\r\nLTRPVSP\r\nLAAPPKA\r\nDQSRMPT\r\nLAKVPPQ\r\nMQLPVYP\r\nMQMPAVN\r\nMQPPGSI\r\nMATPGLG\r\nMAVPQPI\r\nMSARFPP\r\nLTRPPWG\r\nFTKTTSP\r\nGPTRILK\r\nVRWEMNL\r\nMQLPLAT\r\nMGLPLGK\r\nMGLPPSP\r\nMTLPAAS\r\nMTSPPTP\r\nMSLSPPQ\r\nMGTLPTT\r\nLTLPPSP\r\nLSPPPTH\r\nSTHPLQT','A','E','21PHE 22PRO 24GLY 25HIS 26PHE 27LYS 30LYS 33TYR 35LYS 37GLY 38GLY 40PHE 53ARG 64LEU 65GLN 66ALA 67GLU 68GLU 69ARG 72VAL 73SER 82TYR 97VAL 105GLU 107LEU 110ASN 111ASN 112TYR 113ASN 149LEU 150PRO 151MET ',32,'CMA','','http://www.pdb.org/pdb/explore/explore.do?structureId=1II4',''),(26,'1HX1','PP026','QHFNNSVNLGFT(20)\r\nSPERHLHDLRPY(3)\r\nAILIISLMLGFT(1)\r\nAPTVKNCPSPCP(1)\r\nYTTTWRPPYSHN(1)\r\nYWWIIIRQYTTP(1)\r\nTLATVPSSSLFV(1)\r\nLVDHHQTYTTPP(1)','A','B','45THR 46ASP 57ASN 60ALA 61MET 62ASN 258ARG 261ARG 262ARG 265THR 269ARG 281SER 283GLU 284ILE 285ASP 286SER 290GLY 292ASP 294TYR ',19,'CMA','11121403','http://www.pdb.org/pdb/explore/explore.do?structureId=1HX1','http://www.ncbi.nlm.nih.gov/pubmed/11121403'),(27,'1G1S','PP027','CPEFVDVEGDPGALLAC\r\nCGWVDVIASGDTATLAC\r\nCDVEWVDVSSLEWDLPC\r\nCLMGCWCDVGVGGESLC\r\nCPDWVDVFKLVEGVMLC','D','A','606GLU 608LEU 612PHE 613LEU 614PRO 616THR ',6,'CMA','12393589','http://www.pdb.org/pdb/explore/explore.do?structureId=1G1S','http://www.ncbi.nlm.nih.gov/pubmed/12393589'),(28,'1G1S','PP028','VGLDPRDWVDVSDYA\r\nDWVDVREVLTGEQRV','D','A','606GLU 608LEU 612PHE 613LEU 614PRO 616THR ',6,'CMA','12393589','http://www.pdb.org/pdb/explore/explore.do?structureId=1G1S','http://www.ncbi.nlm.nih.gov/pubmed/12393589'),(29,'1G1S','PP029','ECSEGWCDMKIDRLDAGG(+10aa)\r\nWCDSVGDRAGPSV(+15aa)','D','A','606GLU 608LEU 612PHE 613LEU 614PRO 616THR',6,'CMA','','http://www.pdb.org/pdb/explore/explore.do?structureId=1G1S',''),(30,'2C9F','PP030','GLSIWN(6)\r\nNGSYPL(12)\r\nGQQDYA(3)','T','ABC','11PHE 12ASN 14VAL 15TYR 16PRO 18ASP 19THR 13PRO 17TYR ',9,'CMA','7588601','http://www.pdb.org/pdb/explore/explore.do?structureId=2C9F','http://www.ncbi.nlm.nih.gov/pubmed/7588601'),(31,'2C9F','PP031','TRVSWE(1)\r\nSVAISW(1)\r\nIVLWSF(1)\r\nTIFITI(1)\r\nPKLGNH(1)\r\nPVRHPN(1)\r\nMPAHPF(1)\r\nPHFARS(1)\r\nSPRNKF(1)\r\nRTPTLF(1)\r\nLPRARA(1)\r\nRIRSLI(1)\r\nKKCCYI(2)\r\nSTLVRY(1)\r\nYRVLRT(1)\r\nTHSKSF(1)\r\nSHHSSQ(1)\r\nGAFFIG(1)\r\nGAILVI(1)\r\nKNLFFI(1)\r\nSSRVFF(1)\r\nLSAGLA(1)?\r\nRRVLLG(9)\r\nRYVLPI(1)\r\nIRVRTW(1)\r\nLVRQVF(1)\r\nMRLTNM(1)\r\nGLRMFM(1)\r\nKKCCYI(1)\r\nKCCYST(2)\r\nKCCFYV(1)\r\nAGIFRH(1)\r\nVRSHLL(1)\r\nHKTLGF(1)\r\nTEHRID(1)\r\nVLTVIH(1)\r\nITRSSG(1)\r\nLAGTRL(1)','A','STW','192TYR 193LEU 197ARG 203GLU 385LYS 491THR 492HIS 496ARG 497PHE 498PRO 499GLU 220ASP 223THR 227MET 228PRO 287LEU 292TYR 293GLN ',18,'CMA','7588601','http://www.pdb.org/pdb/explore/explore.do?structureId=2C9F','http://www.ncbi.nlm.nih.gov/pubmed/7588601'),(32,'2DSQ','PP032','SEVGCRAGPLQWLCEKYF(6)','I','G','6CYS 7GLY 8ALA 9GLU 11VAL 12ASP 15GLN 25PHE 44VAL 45ASP 48CYS 49PHE ',12,'CMA','9636028','http://www.pdb.org/pdb/explore/explore.do?structureId=2DSQ','http://www.ncbi.nlm.nih.gov/pubmed/9636028'),(33,'2DSQ','PP033','SEVGCRAGPLQWLCEKYF(5)\r\nKDPVCGEGPLMRICERLF(1)','I','G','6CYS 7GLY 8ALA 9GLU 11VAL 12ASP 15GLN 25PHE 44VAL 45ASP 48CYS 49PHE ',12,'CMA','9636028','http://www.pdb.org/pdb/explore/explore.do?structureId=2DSQ','http://www.ncbi.nlm.nih.gov/pubmed/9636028'),(34,'2DSQ','PP034','EVDGRWWIVETFLAKWDHMA(6)','I','G','6CYS 7GLY 8ALA 9GLU 11VAL 12ASP 15GLN 25PHE 44VAL 45ASP 48CYS 49PHE ',12,'CMA','9636028','http://www.pdb.org/pdb/explore/explore.do?structureId=2DSQ','http://www.ncbi.nlm.nih.gov/pubmed/9636028'),(35,'1YCR','PP035','SLMVSVFPFLWMDLVW(7)\r\nSLMMSVFPFLWMDLVW(1)\r\nSSMVSVFPFLWMDLVW(1)\r\nSLMVSVFPFLWMDLMW(1)\r\nSGTWAVFPFLWLDLMW(4)\r\nCVSWLGFAWEWLQLLG(1)\r\nGSSFWAHWEKLLSESL(1)\r\nFAWHWKILSKFCLWLG(1)\r\nRRFPLYFLSELMELIL(5)\r\nPRFPLYFLSELMELIL(1)\r\nRFYFLSALVLVLSGKL(1)\r\nLQVALFLVGLTRGLSE(1)\r\nVGFSDARALLFIVLEL(1)\r\nRLFIRARCKLLLLLRL(1)\r\nFLRLLARLFISCSVVI(1)\r\nFLCLLSLLHRSYFFGI(1)\r\nLCLIVCRRRLLVRVCF(1)\r\nLCICVVVRVLLWSSVQ(1)\r\nSMPFLFHWLNLYLHVC(1)\r\nGSAGYLWLLVMRSICV(1)','B','A','17GLU 18THR 19PHE 20SER 22LEU 23TRP 25LEU 26LEU 27PRO 28GLU 29ASN ',11,'CMA','21423613','http://www.pdb.org/pdb/explore/explore.do?structureId=1YCR','http://www.ncbi.nlm.nih.gov/pubmed/21423613'),(36,'1YCR','PP036','PRFWEYWLRLME(10)\r\nKSFQQYWQELML(9)\r\nKTFEEYWLMLMS(4)\r\nPSFWEHWVELML(4)\r\nKRFQDYWSELML(3)','B','A','17GLU 18THR 19PHE 20SER 22LEU 23TRP 25LEU 26LEU 27PRO 28GLU 29ASN ',11,'CMA','21423613','http://www.pdb.org/pdb/explore/explore.do?structureId=1YCR','http://www.ncbi.nlm.nih.gov/pubmed/21423613'),(37,'2HYM','PP037','KNVHPPP(1)\r\nSLIQASA(1)\r\nKYLNAHV(1)\r\nVPLQPLR(1)\r\nTPHTLPP(1)\r\nSHQHARL(1)\r\nNKVLVPP(1)\r\nIRPDTPR(1)\r\nKNVQVPL(1)\r\nKNVHVPL(1)','B','A','L26 F27 C29 L30 K31 D32 R33 D35 V142 R144 A145 M148 R149 S152 L153 N156 R162 S163 K164 E165',20,'CMA','18430373','http://www.pdb.org/pdb/explore/explore.do?structureId=2HYM','http://www.ncbi.nlm.nih.gov/pubmed/18430373'),(38,'4HTC','PP038','CNRPFIPTC','I','HL','1ILE 2THR 3TYR 4THR 5ASP 13LEU 15LEU 17GLU 19SER 20ASN 21VAL 24LYS 46PRO 47LYS 49GLU 50SER 51HIS 52ASN 53ASN 54GLY 55ASP 56PHE 57GLU 58GLU 59ILE 60PRO 63TYR 65GLN ',28,'CMA','12565725','http://www.pdb.org/pdb/explore/explore.do?structureId=4HTC','http://www.ncbi.nlm.nih.gov/pubmed/12565725'),(39,'1YCR','PP039','TSFAEYWNLLSP(2)\r\nLTFEHYWAQLTS(1)\r\nDDWFQRVWSPLM(1)\r\nLTFEHYWAQLTS(1)\r\nRYEFLDYWSQLH(1)\r\nTSFAEYWNLLSP(1)\r\nVPRSAPTLWLGT(1)\r\nLTFEHYWAQLTS(1)\r\nTSFAEYWNLLSP(2)\r\nLTFEHYWAQLTS(3)\r\nTSFAEYWNLLSP(1)','B','A','17GLU 18THR 19PHE 20SER 22LEU 23TRP 25LEU 26LEU 27PRO 28GLU 29ASN ',11,'CMA','19255450','http://www.pdb.org/pdb/explore/explore.do?structureId=1YCR','http://www.ncbi.nlm.nih.gov/pubmed/19255450'),(40,'3DAB','PP040','TSFAEYWNLLSP(1)\r\nLTFEHYWAQLTS(2)\r\nDDWFQRVWSPLM(1)\r\nNTFREYWNQLPT(1)\r\nTSFAEYWNLLSP(1)\r\nLTFEHYWAQLTS(2)\r\nTSFAEYWNLLSP(3)\r\nDDWFQRVVSPLM(1)\r\nLTFEHYWAQLTS(3)','F','EG','16GLN 17GLU 18THR 19PHE20SER 22LEU 23TRP 26LEU 27PRO ',9,'CMA','19255450','http://www.pdb.org/pdb/explore/explore.do?structureId=3DAB','http://www.ncbi.nlm.nih.gov/pubmed/19255450'),(41,'1FC2','PP041','FGRLVSSIRY(1)\r\nTWKTSRISIF(6)\r\nRLWLHRHKLV(1)\r\nFARLVSSIRY(1)\r\nFGRLVSSIRY(2)\r\nTWKTSRISIF(2)','C','D','124PHE 128GLN 129GLN 130ASN 132PHE 133TYR 136LEU 147ASN 150ILE 153LEU 154LYS ',11,'CMA','9894906','http://www.pdb.org/pdb/explore/explore.do?structureId=1FC2','http://www.ncbi.nlm.nih.gov/pubmed/9894906');

UNLOCK TABLES;

/*Table structure for table `subhome` */

DROP TABLE IF EXISTS `subhome`;

CREATE TABLE `subhome` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `subtitle` varchar(10) NOT NULL,
  `subcontent` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `subhome` */

LOCK TABLES `subhome` WRITE;

insert  into `subhome`(`id`,`title`,`content`,`subtitle`,`subcontent`) values (1,'Welcome to use the benchmark datasets',' We present a new version of the benchmark datasets for conformational B-cell epitope prediction using random peptide library screening, collected a group of reliable datasets from MimoDB and PDB and other published papers as Benchmark 2.0 to facilitate the further development of new epitope prediction algorithms as well as the evaluation and comparison between different algorithms. The new benchmark consists of 39 complex structrues with 66 mimotope sets, the 39 complex structures contain 16 antigen-antibody complexes and 23 protein-protein interactions structures. In addition, we provide 24 test cases as a representative datasets which have only one mimotope sets for one complex structure. Each set include the complex structure, the template chain, the mimotopes obtained from corresponding phage display expriment and the epitope information(for the one which has no functional epitopes, the structural epitopes which are defined as the residue of antigen which has a contact area above 4 upon interaction with the antibody are used). All the datasets can be downloaded freely for academic purposes.','Citation','As a freely accessible resource for B-cell epitope prediction, you are welcome to use this benchmark in your work. If you use this datasets in your project and research, please reference the following citation:<br/>Pingping Sun, Wenhan Chen, Yanxin Huang, Hongyan Wang, Zhiqiang Ma and Yinghua Lv. Epitope Prediction Based on Random Peptide Library Screening: Benchmark Dataset and Prediction Tools Evaluation. Molecules 2011, 16(6), 4971-4993.');

UNLOCK TABLES;

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `professional` varchar(30) NOT NULL,
  `study` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `team` */

LOCK TABLES `team` WRITE;

insert  into `team`(`id`,`name`,`professional`,`study`) values (3,'张友','副教授','模式识别、自动化'),(4,'李艳文','讲师','基因调控网络建模、智能计算'),(5,'孙平平','讲师','抗原表位研究'),(6,'赵晓威','博士后','蛋白质组学'),(7,'王红岩','博士','基因调控网络建模'),(8,'张春华','博士','B细胞表位研究'),(9,'张健','博士','抗原抗体Docking'),(10,'逯畅','硕士研究生二年级','T细胞表位研究'),(11,'zzzz','事实上','事实上');

UNLOCK TABLES;

/*Table structure for table `tools` */

DROP TABLE IF EXISTS `tools`;

CREATE TABLE `tools` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `list` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tools` */

LOCK TABLES `tools` WRITE;

insert  into `tools`(`id`,`list`,`link`) values (1,'MimoPro','http://informatics.nenu.edu.cn/MimoPro/index.jsp'),(2,'PepMapper','http://informatics.nenu.edu.cn/PepMapper/');

UNLOCK TABLES;

/*Table structure for table `year` */

DROP TABLE IF EXISTS `year`;

CREATE TABLE `year` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `year` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `year` */

LOCK TABLES `year` WRITE;

insert  into `year`(`id`,`year`) values (1,'2012'),(2,'2011'),(3,'2010'),(4,'2009'),(5,'2008'),(6,'2007'),(7,'2006'),(8,'2005'),(9,'2013'),(10,'2014');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
