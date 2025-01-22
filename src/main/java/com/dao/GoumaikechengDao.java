package com.dao;

import com.entity.GoumaikechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GoumaikechengVO;
import com.entity.view.GoumaikechengView;


/**
 * 购买课程
 * 
 * @author 
 * @email 
 * @date 2022-04-10 10:44:48
 */
public interface GoumaikechengDao extends BaseMapper<GoumaikechengEntity> {
	
	List<GoumaikechengVO> selectListVO(@Param("ew") Wrapper<GoumaikechengEntity> wrapper);
	
	GoumaikechengVO selectVO(@Param("ew") Wrapper<GoumaikechengEntity> wrapper);
	
	List<GoumaikechengView> selectListView(@Param("ew") Wrapper<GoumaikechengEntity> wrapper);

	List<GoumaikechengView> selectListView(Pagination page,@Param("ew") Wrapper<GoumaikechengEntity> wrapper);
	
	GoumaikechengView selectView(@Param("ew") Wrapper<GoumaikechengEntity> wrapper);
	

}
