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
	
	
	//≤È—Ø
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Lost> getLost() {
			return lafdao.getLost();
		
		}
		
		//≤È—Ø
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Lost> getoneLost(int id) {
			return lafdao.getoneLost(id);
		}
		

		//…æ≥˝
		public void deleteLost(int id){
			lafdao.deleteLost(id);
		}
		

		//≤È—Ø
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Find> getFind() {
			return lafdao.getFind();
		
		}
		
		//≤È—Ø
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Find> getoneFind(int id) {
			return lafdao.getoneFind(id);
		}
		

		//…æ≥˝
		public void deleteFind(int id){
			lafdao.deleteFind(id);
		}
		
		//≤È—Ø
		@SuppressWarnings("rawtypes")
		@Transactional(propagation=Propagation.NOT_SUPPORTED)
		public List<Findreply> getFindreply(int id) {
			return lafdao.getFindreply(id);
		
		}
		
		//≤È—Ø
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
