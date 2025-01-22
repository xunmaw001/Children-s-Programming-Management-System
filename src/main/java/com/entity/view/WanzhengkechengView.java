package com.entity.view;

import com.entity.WanzhengkechengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 完整课程
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-10 10:44:48
 */
@TableName("wanzhengkecheng")
public class WanzhengkechengView  extends WanzhengkechengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WanzhengkechengView(){
	}
 
 	public WanzhengkechengView(WanzhengkechengEntity wanzhengkechengEntity){
 	try {
			BeanUtils.copyProperties(this, wanzhengkechengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
