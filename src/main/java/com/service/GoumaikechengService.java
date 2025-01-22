package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GoumaikechengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.GoumaikechengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.GoumaikechengView;


/**
 * 购买课程
 *
 * @author 
 * @email 
 * @date 2022-04-10 10:44:48
 */
public interface GoumaikechengService extends IService<GoumaikechengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GoumaikechengVO> selectListVO(Wrapper<GoumaikechengEntity> wrapper);
   	
   	GoumaikechengVO selectVO(@Param("ew") Wrapper<GoumaikechengEntity> wrapper);
   	
   	List<GoumaikechengView> selectListView(Wrapper<GoumaikechengEntity> wrapper);
   	
   	GoumaikechengView selectView(@Param("ew") Wrapper<GoumaikechengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GoumaikechengEntity> wrapper);
   	

}

