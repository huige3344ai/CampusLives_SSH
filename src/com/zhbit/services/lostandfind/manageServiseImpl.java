package com.zhbit.services.lostandfind;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.dao.lostandfind.LAFDao;
import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Findreply;
import com.zhbit.domain.lostandfind.Lost;
import com.zhbit.domain.lostandfind.Lostreply;

@Transactional
public class manageServiseImpl implements manageServise{
	
	@Resource
	private LAFDao lafdao ;
	
	
	//��ѯ
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Lost> getLost() {
			return lafdao.getLost();
		
		}
		
		//��ѯ
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Lost> getoneLost(int id) {
			return lafdao.getoneLost(id);
		}
		

		//ɾ��
		public void deleteLost(int id){
			lafdao.deleteLost(id);
		}
		

		//��ѯ
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Find> getFind() {
			return lafdao.getFind();
		
		}
		
		//��ѯ
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Find> getoneFind(int id) {
			return lafdao.getoneFind(id);
		}
		

		//ɾ��
		public void deleteFind(int id){
			lafdao.deleteFind(id);
		}
		
		//��ѯ
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Findreply> getFindreply(int id) {
			return lafdao.getFindreply(id);
		
		}
		
		//��ѯ
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Lostreply> getLostreply(int id){
			return lafdao.getLostreply(id);
		
		}
		
		public void deleteLostreply(int id){
			lafdao.deleteLostreply(id);
		}
		
		public void deleteFindreply(int id){
			lafdao.deleteFindreply(id);
		}
		public void deleteFindonereply(int id){
			lafdao.deleteFindonereply(id);
		}
		
		public void deleteLostonereply(int id){
			lafdao.deleteLostonereply(id);
		}
}
