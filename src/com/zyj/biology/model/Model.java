package com.zyj.biology.model;

import java.util.List;
import java.util.Map;

import com.zyj.biology.dao.AdminLoginDao;
import com.zyj.biology.dao.BenchmarkDao;
import com.zyj.biology.dao.ClassDao;
import com.zyj.biology.dao.ContactDao;
import com.zyj.biology.dao.DownloadDao;
import com.zyj.biology.dao.HelpDao;
import com.zyj.biology.dao.IndexContentDao;
import com.zyj.biology.dao.NewsDao;
import com.zyj.biology.dao.PaperDao;
import com.zyj.biology.dao.ProjectDao;
import com.zyj.biology.dao.ResourceDao;
import com.zyj.biology.dao.SubhomeDao;
import com.zyj.biology.dao.TeamDao;
import com.zyj.biology.dao.YearDao;

import com.zyj.biology.daoimpl.AdminLoginDaoImpl;
import com.zyj.biology.daoimpl.BenchmarkDaoImpl;
import com.zyj.biology.daoimpl.ClassDaoImpl;
import com.zyj.biology.daoimpl.ContactDaoImpl;
import com.zyj.biology.daoimpl.DownloadDaoImpl;
import com.zyj.biology.daoimpl.HelpDaoImpl;
import com.zyj.biology.daoimpl.IndexContentDaoImpl;
import com.zyj.biology.daoimpl.NewsDaoImpl;
import com.zyj.biology.daoimpl.PaperDaoImpl;
import com.zyj.biology.daoimpl.ProjectDaoImpl;
import com.zyj.biology.daoimpl.ResourceDaoImpl;
import com.zyj.biology.daoimpl.SubhomeDaoImpl;
import com.zyj.biology.daoimpl.TeamDaoImpl;
import com.zyj.biology.daoimpl.YearDaoImpl;
import com.zyj.biology.po.Admin;
import com.zyj.biology.po.Antigen;
import com.zyj.biology.po.Classes;
import com.zyj.biology.po.Contact;
import com.zyj.biology.po.Datasets;
import com.zyj.biology.po.Download;
import com.zyj.biology.po.Help;
import com.zyj.biology.po.Home;
import com.zyj.biology.po.News;

import com.zyj.biology.po.Papers;
import com.zyj.biology.po.Project;
import com.zyj.biology.po.Protein;
import com.zyj.biology.po.Subhome;
import com.zyj.biology.po.Team;
import com.zyj.biology.po.Tools;
import com.zyj.biology.po.Year;

public class Model {
	
/*-------------------------ǰ̨---------------------------------*/
	private IndexContentDao ic = new IndexContentDaoImpl();
	private TeamDao t=new TeamDaoImpl();
	private NewsDao n=new NewsDaoImpl();
	private ProjectDao p=new ProjectDaoImpl();
	private PaperDao pa=new PaperDaoImpl();
	private ResourceDao re=new ResourceDaoImpl();
	private ClassDao cl =new ClassDaoImpl();
	private SubhomeDao sh=new SubhomeDaoImpl();
	private BenchmarkDao be=new BenchmarkDaoImpl();
	private DownloadDao dn=new DownloadDaoImpl();
	private ContactDao co=new ContactDaoImpl();
	private HelpDao he=new HelpDaoImpl();
	private YearDao ye=new YearDaoImpl();
	private AdminLoginDao adm=new AdminLoginDaoImpl();
	public List getHome(){
		return ic.getHome();
	}
	public List getNewstitle(){
		return ic.getNewstitle();
	}
	public List getYear(){
		return ye.getYear();
	}
	public boolean updateHome(Home home,int id){
		return ic.updateHome(home,id);
	}
	public List getTeam(){
		return t.getTeam();
	}
	public boolean updateTeam(Team team,int id){
		return t.updateTeam(team,id);
	}
	public boolean deleteTeamById(int Id){
		return t.deleteTeamById(Id);
	}
	public boolean addTeam(Team team) {
		return t.addTeam(team);
	}
	public List getProject(){
		return p.getProject();
	}
	public boolean updateProject(Project project){
		return p.updateProject(project);
	}
	public boolean deleteProjectById(int Id){
		return p.deleteProjectById(Id);
	}
	public boolean addProject(Project project){
		return p.addProject(project);
	}
	public List getPaperbyyear(int year){
		return pa.getPaperbyyear(year);
	}
	public boolean updatePaper(Papers papers,int id){
		return pa.updatePaper(papers,id);
	}
	public boolean deletePaperById(int Id){
		return pa.deletePaperById(Id);
	}
	public List getDatasets(){
		return re.getDatasets();
	}
	public List getTools(){
		return re.getTools();
	}
	public boolean updateDatasets(Datasets datasets){
		return re.updateDatasets(datasets);
	}
	public boolean deleteDatasetsById(int Id){
		return re.deleteDatasetsById(Id);
	}
	public boolean addDatasets(Datasets datasets){
		return re.addDatasets(datasets);
	}
	public boolean updateTools(Tools tools){
		return re.updateTools(tools);
	}
	public boolean deleteToolsById(int Id){
		return re.deleteToolsById(Id);
	}
	public boolean addTools(Tools tools){
		return re.addTools(tools);
	}
	public List getClasses(){
		return cl.getClasses();
	}
	public boolean updateClasses(Classes classes){
		return cl.updateClasses(classes);
	}
	public boolean deleteClassesById(int Id){
		return cl.deleteClassesById(Id);
	}
	public boolean addClasses(Classes classes){
		return cl.addClasses(classes);
	}
	public List getSubhome(){
		return sh.getSubhome();
	}
	public boolean updateSubhome(Subhome subhome){
		return sh.updateSubhome(subhome);
	}
	public List getAntigen(){
		return be.getAntigen();
	}
	public List getProtein(){
		return be.getProtein();
	}
	public boolean updateAntigen(Antigen antigen){
		return be.updateAntigen(antigen);
	}
	public boolean deleteAntigenById(int Id){
		return be.deleteAntigenById(Id);
	}
	public boolean addAntigen(Antigen antigen){
		return be.addAntigen(antigen);
	}
	public boolean updateProtein(Protein protein){
		return be.updateProtein(protein);
	}
	public boolean deleteProteinById(int Id){
		return be.deleteProteinById(Id);
	}
	public boolean addProtein(Protein protein){
		return be.addProtein(protein);
	}
	public List getDownload(){
		return dn.getDownload();
	}
	public boolean updateDownload(Download download){
		return dn.updateDownload(download);
	}
	public boolean deleteDownloadById(int Id){
		return dn.deleteDownloadById(Id);
	}
	public boolean addDownload(Download download){
		return dn.addDownload(download);
	}
	public List getContact(){
		return co.getContact();
	}
	public boolean updateContact(Contact contact){
		return co.updateContact(contact);
	}
	public List getHelp(){
		return he.getHelp();
	}
	public boolean updateHelp(Help help){
		return he.updateHelp(help);
	}
	public boolean addYear(Year year) {
		return pa.addYear(year);
	}
	public boolean addPaperbyyear(Papers papers,String y){
		return pa.addPaperbyyear(papers, y);
	}
	public int getidbyyear(String year){
		return pa.getidbyyear(year);
	}
	public News getContentbyid(int id) {
		return ic.getContentbyid(id);
	}
	public boolean updateNews(News news){
		return cl.updateNews(news);
	}
	public boolean deletenewsById(int Id){
		return cl.deletenewsById(Id);
	}
	public boolean addNews(News news){
		return n.addNews(news);
	}
	public List getNews(int id){
		return n.getNews(id);
	}
	
	

	
	public boolean login(Admin admin){
		return adm.login(admin);
	}
	public boolean updatePassword(Admin admin){
		return adm.updatePassword(admin);
	}
	public boolean updatNews(News news, int id) {
		// TODO Auto-generated method stub
		return false;
	}
}
