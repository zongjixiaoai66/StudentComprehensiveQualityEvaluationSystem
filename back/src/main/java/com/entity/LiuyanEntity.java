package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 留言
 *
 * @author 
 * @email
 */
@TableName("liuyan")
public class LiuyanEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public LiuyanEntity() {

	}

	public LiuyanEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 学生
     */
    @TableField(value = "xuesheng_id")

    private Integer xueshengId;


    /**
     * 留言名称
     */
    @TableField(value = "liuyan_name")

    private String liuyanName;


    /**
     * 留言类型
     */
    @TableField(value = "liuyan_types")

    private Integer liuyanTypes;


    /**
     * 留言附件
     */
    @TableField(value = "liuyan_file")

    private String liuyanFile;


    /**
     * 留言内容
     */
    @TableField(value = "liuyan_content")

    private String liuyanContent;


    /**
     * 留言时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 回复内容
     */
    @TableField(value = "huifu_content")

    private String huifuContent;


    /**
     * 回复时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "update_time",fill = FieldFill.UPDATE)

    private Date updateTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }
    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：学生
	 */
    public Integer getXueshengId() {
        return xueshengId;
    }
    /**
	 * 获取：学生
	 */

    public void setXueshengId(Integer xueshengId) {
        this.xueshengId = xueshengId;
    }
    /**
	 * 设置：留言名称
	 */
    public String getLiuyanName() {
        return liuyanName;
    }
    /**
	 * 获取：留言名称
	 */

    public void setLiuyanName(String liuyanName) {
        this.liuyanName = liuyanName;
    }
    /**
	 * 设置：留言类型
	 */
    public Integer getLiuyanTypes() {
        return liuyanTypes;
    }
    /**
	 * 获取：留言类型
	 */

    public void setLiuyanTypes(Integer liuyanTypes) {
        this.liuyanTypes = liuyanTypes;
    }
    /**
	 * 设置：留言附件
	 */
    public String getLiuyanFile() {
        return liuyanFile;
    }
    /**
	 * 获取：留言附件
	 */

    public void setLiuyanFile(String liuyanFile) {
        this.liuyanFile = liuyanFile;
    }
    /**
	 * 设置：留言内容
	 */
    public String getLiuyanContent() {
        return liuyanContent;
    }
    /**
	 * 获取：留言内容
	 */

    public void setLiuyanContent(String liuyanContent) {
        this.liuyanContent = liuyanContent;
    }
    /**
	 * 设置：留言时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }
    /**
	 * 获取：留言时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：回复内容
	 */
    public String getHuifuContent() {
        return huifuContent;
    }
    /**
	 * 获取：回复内容
	 */

    public void setHuifuContent(String huifuContent) {
        this.huifuContent = huifuContent;
    }
    /**
	 * 设置：回复时间
	 */
    public Date getUpdateTime() {
        return updateTime;
    }
    /**
	 * 获取：回复时间
	 */

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }
    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Liuyan{" +
            "id=" + id +
            ", xueshengId=" + xueshengId +
            ", liuyanName=" + liuyanName +
            ", liuyanTypes=" + liuyanTypes +
            ", liuyanFile=" + liuyanFile +
            ", liuyanContent=" + liuyanContent +
            ", insertTime=" + insertTime +
            ", huifuContent=" + huifuContent +
            ", updateTime=" + updateTime +
            ", createTime=" + createTime +
        "}";
    }
}
