package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WanzhengkechengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WanzhengkechengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WanzhengkechengView;


/**
 * 完整课程
 *
 * @author 
 * @email 
 * @date 2022-04-10 10:44:48
 */
public interface WanzhengkechengService extends IService<WanzhengkechengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WanzhengkechengVO> selectListVO(Wrapper<WanzhengkechengEntity> wrapper);
   	
   	WanzhengkechengVO selectVO(@Param("ew") Wrapper<WanzhengkechengEntity> wrapper);
   	
   	List<WanzhengkechengView> selectListView(Wrapper<WanzhengkechengEntity> wrapper);
   	
   	WanzhengkechengView selectView(@Param("ew") Wrapper<WanzhengkechengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WanzhengkechengEntity> wrapper);
   	

}

