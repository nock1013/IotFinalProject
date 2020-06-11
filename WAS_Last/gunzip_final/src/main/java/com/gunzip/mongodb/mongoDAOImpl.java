package com.gunzip.mongodb;

import java.util.ArrayList;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;

@Repository
public class mongoDAOImpl implements mongoDAO {
	@Autowired
	MongoTemplate mongotemplate;
		
	@Override
	public void insert(mongoDTO dto) {
		mongotemplate.insert(dto);
	}

	@Override
	public ArrayList<mongoDTO> select(mongoDTO dto) {
		ArrayList<mongoDTO> list = new ArrayList<>();
		list = (ArrayList<mongoDTO>) mongotemplate.findAll(mongoDTO.class);
		return list;
	}

	@Override
	public void insertLog(mongoLogDTO dto) {
		mongotemplate.insert(dto);
	}

	@Override
	public ArrayList<mongoLogDTO> selectAllLog(String _id) {
		//db.loglist.find( {"_id": { $gte:ObjectId("5ece62c646083d4211e2ec90")}})
		ArrayList<mongoLogDTO> list = new ArrayList<>();
		/*BasicQuery query = new BasicQuery("{_id: {$gte:ObjectId('5ece62c646083d4211e2ec90')}}");
		_id = "ObjectId('5ece62c646083d4211e2ec90')";
		Query query = new Query();
		query.addCriteria(
			new Criteria().where("_id").lte(_id)
		);
		list = (ArrayList<mongoLogDTO>)mongotemplate.find(query, mongoLogDTO.class);
		*/
		if(_id.length()<1) {
			//list = (ArrayList<mongoLogDTO>) mongotemplate.findAll(mongoLogDTO.class);
			list = (ArrayList<mongoLogDTO>) mongotemplate.findAll(mongoLogDTO.class);
		}else {
			System.out.println("_id:"+_id);
			Query query = new Query();
			query.addCriteria(
				new Criteria().where("saveDate").gt(_id)
			);
			list = (ArrayList<mongoLogDTO>)mongotemplate.find(query, mongoLogDTO.class);
		}		
		return list;
	}

	@Override
	public ArrayList<mongoDTO> selectCarLog(String _id) {
		ArrayList<mongoDTO> list = new ArrayList<>();
		if(_id.length()<1) {
			list = (ArrayList<mongoDTO>) mongotemplate.findAll(mongoDTO.class);
		}else {
			System.out.println("_id:"+_id);
			Query query = new Query();
			query.addCriteria(
				new Criteria().where("saveDate").gt(_id)
			);
			list = (ArrayList<mongoDTO>)mongotemplate.find(query, mongoDTO.class);
		}		
		return list;
	}
}
