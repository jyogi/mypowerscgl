/**********************************************
这是代码自动生成的，如果重新生成，所做的改动将会丢失
系统:kcgl
模块:库存管理
Itop.com 版权所有
生成者：Rabbit
生成时间:2012-7-28 15:12:37
***********************************************/

using System;
using System.Threading;
using System.ComponentModel;
namespace Ebada.Kcgl.Model
{
    /// <summary>
    ///[kc_退货明细表]业务实体类
    ///对应表名:kc_退货明细表
    /// </summary>
    [Serializable]
    public class kc_退货明细表
    {
        
        #region Private 成员
        private string _id=Newid(); 
        private string _退货单_id=String.Empty; 
        private string _工程类别_id=String.Empty; 
        private string _退货厂家_id=String.Empty; 
        private string _材料名称_id=String.Empty; 
        private string _工程类别=String.Empty; 
        private string _退货厂家=String.Empty; 
        private string _材料名称=String.Empty; 
        private string _规格及型号=String.Empty; 
        private string _计量单位=String.Empty; 
        private decimal _单价=0; 
        private double _数量=0; 
        private double _总计=0; 
        private DateTime _退货日期=new DateTime(1900,1,1); 
        private string _备注=String.Empty;   
        #endregion
		
        #region const 成员
        public const string f_ID= "ID"; 
        public const string f_退货单_ID= "退货单_ID"; 
        public const string f_工程类别_ID= "工程类别_ID"; 
        public const string f_退货厂家_ID= "退货厂家_ID"; 
        public const string f_材料名称_ID= "材料名称_ID"; 
        public const string f_工程类别= "工程类别"; 
        public const string f_退货厂家= "退货厂家"; 
        public const string f_材料名称= "材料名称"; 
        public const string f_规格及型号= "规格及型号"; 
        public const string f_计量单位= "计量单位"; 
        public const string f_单价= "单价"; 
        public const string f_数量= "数量"; 
        public const string f_总计= "总计"; 
        public const string f_退货日期= "退货日期"; 
        public const string f_备注= "备注";   
        #endregion
  
        #region Public 成员
   
        /// <summary>
        /// 属性名称：ID
        /// 属性描述：
        /// 字段信息：[ID],nvarchar
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("")]
        public string ID
        {
            get { return _id; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[ID]长度不能大于50!");
                if (_id as object == null || !_id.Equals(value))
                {
                    _id = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：退货单_ID
        /// 属性描述：
        /// 字段信息：[退货单_ID],nvarchar
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("")]
        public string 退货单_ID
        {
            get { return _退货单_id; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[退货单_ID]长度不能大于50!");
                if (_退货单_id as object == null || !_退货单_id.Equals(value))
                {
                    _退货单_id = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：工程类别_ID
        /// 属性描述：
        /// 字段信息：[工程类别_ID],nvarchar
        /// </summary>
        [DisplayNameAttribute("")]
        public string 工程类别_ID
        {
            get { return _工程类别_id; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[工程类别_ID]长度不能大于50!");
                if (_工程类别_id as object == null || !_工程类别_id.Equals(value))
                {
                    _工程类别_id = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：退货厂家_ID
        /// 属性描述：
        /// 字段信息：[退货厂家_ID],nvarchar
        /// </summary>
        [DisplayNameAttribute("")]
        public string 退货厂家_ID
        {
            get { return _退货厂家_id; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[退货厂家_ID]长度不能大于50!");
                if (_退货厂家_id as object == null || !_退货厂家_id.Equals(value))
                {
                    _退货厂家_id = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：材料名称_ID
        /// 属性描述：
        /// 字段信息：[材料名称_ID],nvarchar
        /// </summary>
        [DisplayNameAttribute("")]
        public string 材料名称_ID
        {
            get { return _材料名称_id; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[材料名称_ID]长度不能大于50!");
                if (_材料名称_id as object == null || !_材料名称_id.Equals(value))
                {
                    _材料名称_id = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：工程类别
        /// 属性描述：
        /// 字段信息：[工程类别],nvarchar
        /// </summary>
        [DisplayNameAttribute("")]
        public string 工程类别
        {
            get { return _工程类别; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[工程类别]长度不能大于50!");
                if (_工程类别 as object == null || !_工程类别.Equals(value))
                {
                    _工程类别 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：退货厂家
        /// 属性描述：
        /// 字段信息：[退货厂家],nvarchar
        /// </summary>
        [DisplayNameAttribute("")]
        public string 退货厂家
        {
            get { return _退货厂家; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[退货厂家]长度不能大于50!");
                if (_退货厂家 as object == null || !_退货厂家.Equals(value))
                {
                    _退货厂家 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：材料名称
        /// 属性描述：
        /// 字段信息：[材料名称],nvarchar
        /// </summary>
        [DisplayNameAttribute("")]
        public string 材料名称
        {
            get { return _材料名称; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[材料名称]长度不能大于50!");
                if (_材料名称 as object == null || !_材料名称.Equals(value))
                {
                    _材料名称 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：规格及型号
        /// 属性描述：
        /// 字段信息：[规格及型号],nvarchar
        /// </summary>
        [DisplayNameAttribute("")]
        public string 规格及型号
        {
            get { return _规格及型号; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[规格及型号]长度不能大于50!");
                if (_规格及型号 as object == null || !_规格及型号.Equals(value))
                {
                    _规格及型号 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：计量单位
        /// 属性描述：
        /// 字段信息：[计量单位],nvarchar
        /// </summary>
        [DisplayNameAttribute("")]
        public string 计量单位
        {
            get { return _计量单位; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[计量单位]长度不能大于50!");
                if (_计量单位 as object == null || !_计量单位.Equals(value))
                {
                    _计量单位 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：单价
        /// 属性描述：
        /// 字段信息：[单价],money
        /// </summary>
        [DisplayNameAttribute("")]
        public decimal 单价
        {
            get { return _单价; }
            set
            {			
                if (_单价 as object == null || !_单价.Equals(value))
                {
                    _单价 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：数量
        /// 属性描述：
        /// 字段信息：[数量],float
        /// </summary>
        [DisplayNameAttribute("")]
        public double 数量
        {
            get { return _数量; }
            set
            {			
                if (_数量 as object == null || !_数量.Equals(value))
                {
                    _数量 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：总计
        /// 属性描述：
        /// 字段信息：[总计],float
        /// </summary>
        [DisplayNameAttribute("")]
        public double 总计
        {
            get { return _总计; }
            set
            {			
                if (_总计 as object == null || !_总计.Equals(value))
                {
                    _总计 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：退货日期
        /// 属性描述：
        /// 字段信息：[退货日期],datetime
        /// </summary>
        [DisplayNameAttribute("")]
        public DateTime 退货日期
        {
            get { return _退货日期; }
            set
            {			
                if (_退货日期 as object == null || !_退货日期.Equals(value))
                {
                    _退货日期 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：备注
        /// 属性描述：
        /// 字段信息：[备注],nvarchar
        /// </summary>
        [DisplayNameAttribute("")]
        public string 备注
        {
            get { return _备注; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[备注]长度不能大于50!");
                if (_备注 as object == null || !_备注.Equals(value))
                {
                    _备注 = value;
                }
            }			 
        }
  
        #endregion 
  
        #region 方法
        public static string Newid(){
            return DateTime.Now.ToString("yyyyMMddHHmmssffffff");
        }
        public string CreateID(){
            Thread.Sleep(new TimeSpan(100000));//0.1毫秒
            return DateTime.Now.ToString("yyyyMMddHHmmssffffff");
        }
        #endregion		
    }	
}
