package com.dao;

import com.entity.WanzhengkechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WanzhengkechengVO;
import com.entity.view.WanzhengkechengView;


/**
 * 完整课程
 * 
 * @author 
 * @email 
 * @date 2022-04-10 10:44:48
 */
public interface WanzhengkechengDao extends BaseMapper<WanzhengkechengEntity> {
	
	List<WanzhengkechengVO> selectListVO(@Param("ew") Wrapper<WanzhengkechengEntity> wrapper);
	
	WanzhengkechengVO selectVO(@Param("ew") Wrapper<WanzhengkechengEntity> wrapper);
	
	List<WanzhengkechengView> selectListView(@Param("ew") Wrapper<WanzhengkechengEntity> wrapper);

	List<WanzhengkechengView> selectListView(Pagination page,@Param("ew") Wrapper<WanzhengkechengEntity> wrapper);
	
	WanzhengkechengView selectView(@Param("ew") Wrapper<WanzhengkechengEntity> wrapper);
	

}
