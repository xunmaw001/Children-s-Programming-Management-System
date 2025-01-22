package com.entity.view;

import com.entity.GoumaikechengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 购买课程
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-10 10:44:48
 */
@TableName("goumaikecheng")
public class GoumaikechengView  extends GoumaikechengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public GoumaikechengView(){
	}
 
 	public GoumaikechengView(GoumaikechengEntity goumaikechengEntity){
 	try {
			BeanUtils.copyProperties(this, goumaikechengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
