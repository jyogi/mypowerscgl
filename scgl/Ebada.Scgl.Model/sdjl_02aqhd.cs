/**********************************************
这是代码自动生成的，如果重新生成，所做的改动将会丢失
系统:Ebada农电局生产管理
模块:系统平台
Ebada.com 版权所有
生成者：Rabbit
生成时间:2013-4-18 15:15:40
***********************************************/

using System;
using System.Threading;
using System.ComponentModel;
namespace Ebada.Scgl.Model
{
    /// <summary>
    ///[sdjl_02aqhd]业务实体类
    ///对应表名:sdjl_02aqhd
    /// </summary>
    [Serializable]
    public class sdjl_02aqhd
    {
        
        #region Private 成员
        private string _id=Newid(); 
        private string _orgcode=String.Empty; 
        private string _orgname=String.Empty; 
        private string _zcr=String.Empty; 
        private DateTime _kssj=new DateTime(1900,1,1); 
        private DateTime _jssj=new DateTime(1900,1,1); 
        private string _hydd=String.Empty; 
        private string _cjry=String.Empty; 
        private string _qxry=String.Empty; 
        private string _hdnr=String.Empty; 
        private string _hdxj=String.Empty; 
        private string _fyjyjl=String.Empty; 
        private string _py=String.Empty; 
        private string _qz=String.Empty; 
        private DateTime _qzrq=new DateTime(1900,1,1); 
        private string _gznrid=String.Empty; 
        private string _createman=String.Empty; 
        private DateTime _createdate=new DateTime(1900,1,1); 
        private string _c1=String.Empty; 
        private string _c2=String.Empty; 
        private string _c3=String.Empty; 
        private string _c4=String.Empty; 
        private string _c5=String.Empty;   
        #endregion
  
  
        #region Public 成员
   
        /// <summary>
        /// 属性名称：ID
        /// 属性描述：记录ID
        /// 字段信息：[ID],nvarchar
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("记录ID")]
        public string ID
        {
            get { return _id; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[记录ID]长度不能大于50!");
                if (_id as object == null || !_id.Equals(value))
                {
                    _id = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：OrgCode
        /// 属性描述：供电所代码
        /// 字段信息：[OrgCode],nvarchar
        /// </summary>
        [DisplayNameAttribute("供电所代码")]
        public string OrgCode
        {
            get { return _orgcode; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[供电所代码]长度不能大于50!");
                if (_orgcode as object == null || !_orgcode.Equals(value))
                {
                    _orgcode = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：OrgName
        /// 属性描述：供电所名称
        /// 字段信息：[OrgName],nvarchar
        /// </summary>
        [DisplayNameAttribute("供电所名称")]
        public string OrgName
        {
            get { return _orgname; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[供电所名称]长度不能大于50!");
                if (_orgname as object == null || !_orgname.Equals(value))
                {
                    _orgname = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：zcr
        /// 属性描述：主持人
        /// 字段信息：[zcr],nvarchar
        /// </summary>
        [DisplayNameAttribute("主持人")]
        public string zcr
        {
            get { return _zcr; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[主持人]长度不能大于50!");
                if (_zcr as object == null || !_zcr.Equals(value))
                {
                    _zcr = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：kssj
        /// 属性描述：开始时间
        /// 字段信息：[kssj],datetime
        /// </summary>
        [DisplayNameAttribute("开始时间")]
        public DateTime kssj
        {
            get { return _kssj; }
            set
            {			
                if (_kssj as object == null || !_kssj.Equals(value))
                {
                    _kssj = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：jssj
        /// 属性描述：结束时间
        /// 字段信息：[jssj],datetime
        /// </summary>
        [DisplayNameAttribute("结束时间")]
        public DateTime jssj
        {
            get { return _jssj; }
            set
            {			
                if (_jssj as object == null || !_jssj.Equals(value))
                {
                    _jssj = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：hydd
        /// 属性描述：会议地点
        /// 字段信息：[hydd],nvarchar
        /// </summary>
        [DisplayNameAttribute("会议地点")]
        public string hydd
        {
            get { return _hydd; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[会议地点]长度不能大于50!");
                if (_hydd as object == null || !_hydd.Equals(value))
                {
                    _hydd = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：cjry
        /// 属性描述：参加人员
        /// 字段信息：[cjry],nvarchar
        /// </summary>
        [DisplayNameAttribute("参加人员")]
        public string cjry
        {
            get { return _cjry; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 500)
                throw new Exception("[参加人员]长度不能大于500!");
                if (_cjry as object == null || !_cjry.Equals(value))
                {
                    _cjry = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：qxry
        /// 属性描述：缺席人员
        /// 字段信息：[qxry],nvarchar
        /// </summary>
        [DisplayNameAttribute("缺席人员")]
        public string qxry
        {
            get { return _qxry; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 150)
                throw new Exception("[缺席人员]长度不能大于150!");
                if (_qxry as object == null || !_qxry.Equals(value))
                {
                    _qxry = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：hdnr
        /// 属性描述：活动内容
        /// 字段信息：[hdnr],nvarchar
        /// </summary>
        [DisplayNameAttribute("活动内容")]
        public string hdnr
        {
            get { return _hdnr; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 4000)
                throw new Exception("[活动内容]长度不能大于4000!");
                if (_hdnr as object == null || !_hdnr.Equals(value))
                {
                    _hdnr = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：hdxj
        /// 属性描述：活动小结
        /// 字段信息：[hdxj],nvarchar
        /// </summary>
        [DisplayNameAttribute("活动小结")]
        public string hdxj
        {
            get { return _hdxj; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 4000)
                throw new Exception("[活动小结]长度不能大于4000!");
                if (_hdxj as object == null || !_hdxj.Equals(value))
                {
                    _hdxj = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：fyjyjl
        /// 属性描述：发言简要记录
        /// 字段信息：[fyjyjl],nvarchar
        /// </summary>
        [DisplayNameAttribute("发言简要记录")]
        public string fyjyjl
        {
            get { return _fyjyjl; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 4000)
                throw new Exception("[发言简要记录]长度不能大于4000!");
                if (_fyjyjl as object == null || !_fyjyjl.Equals(value))
                {
                    _fyjyjl = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：py
        /// 属性描述：评语
        /// 字段信息：[py],nvarchar
        /// </summary>
        [DisplayNameAttribute("评语")]
        public string py
        {
            get { return _py; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 500)
                throw new Exception("[评语]长度不能大于500!");
                if (_py as object == null || !_py.Equals(value))
                {
                    _py = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：qz
        /// 属性描述：签字
        /// 字段信息：[qz],nvarchar
        /// </summary>
        [DisplayNameAttribute("签字")]
        public string qz
        {
            get { return _qz; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[签字]长度不能大于50!");
                if (_qz as object == null || !_qz.Equals(value))
                {
                    _qz = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：qzrq
        /// 属性描述：签字日期
        /// 字段信息：[qzrq],datetime
        /// </summary>
        [DisplayNameAttribute("签字日期")]
        public DateTime qzrq
        {
            get { return _qzrq; }
            set
            {			
                if (_qzrq as object == null || !_qzrq.Equals(value))
                {
                    _qzrq = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：gznrID
        /// 属性描述：gznrID
        /// 字段信息：[gznrID],nvarchar
        /// </summary>
        [DisplayNameAttribute("gznrID")]
        public string gznrID
        {
            get { return _gznrid; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[gznrID]长度不能大于50!");
                if (_gznrid as object == null || !_gznrid.Equals(value))
                {
                    _gznrid = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：CreateMan
        /// 属性描述：填写人
        /// 字段信息：[CreateMan],nvarchar
        /// </summary>
        [DisplayNameAttribute("填写人")]
        public string CreateMan
        {
            get { return _createman; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 10)
                throw new Exception("[填写人]长度不能大于10!");
                if (_createman as object == null || !_createman.Equals(value))
                {
                    _createman = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：CreateDate
        /// 属性描述：填写日期
        /// 字段信息：[CreateDate],datetime
        /// </summary>
        [DisplayNameAttribute("填写日期")]
        public DateTime CreateDate
        {
            get { return _createdate; }
            set
            {			
                if (_createdate as object == null || !_createdate.Equals(value))
                {
                    _createdate = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：c1
        /// 属性描述：备用字段1
        /// 字段信息：[c1],nvarchar
        /// </summary>
        [DisplayNameAttribute("备用字段1")]
        public string c1
        {
            get { return _c1; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 500)
                throw new Exception("[备用字段1]长度不能大于500!");
                if (_c1 as object == null || !_c1.Equals(value))
                {
                    _c1 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：c2
        /// 属性描述：备用字段2
        /// 字段信息：[c2],nvarchar
        /// </summary>
        [DisplayNameAttribute("备用字段2")]
        public string c2
        {
            get { return _c2; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 500)
                throw new Exception("[备用字段2]长度不能大于500!");
                if (_c2 as object == null || !_c2.Equals(value))
                {
                    _c2 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：c3
        /// 属性描述：备用字段3
        /// 字段信息：[c3],nvarchar
        /// </summary>
        [DisplayNameAttribute("备用字段3")]
        public string c3
        {
            get { return _c3; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 500)
                throw new Exception("[备用字段3]长度不能大于500!");
                if (_c3 as object == null || !_c3.Equals(value))
                {
                    _c3 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：c4
        /// 属性描述：备用字段4
        /// 字段信息：[c4],nvarchar
        /// </summary>
        [DisplayNameAttribute("备用字段4")]
        public string c4
        {
            get { return _c4; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 500)
                throw new Exception("[备用字段4]长度不能大于500!");
                if (_c4 as object == null || !_c4.Equals(value))
                {
                    _c4 = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：c5
        /// 属性描述：备用字段5
        /// 字段信息：[c5],nvarchar
        /// </summary>
        [DisplayNameAttribute("备用字段5")]
        public string c5
        {
            get { return _c5; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 500)
                throw new Exception("[备用字段5]长度不能大于500!");
                if (_c5 as object == null || !_c5.Equals(value))
                {
                    _c5 = value;
                }
            }			 
        }
  
        #endregion 
  
        #region 方法
        public static string Newid(){
            return DateTime.Now.ToString("yyyyMMddHHmmssfff");
        }
        public string CreateID(){
            Thread.Sleep(new TimeSpan(100000));//0.1毫秒
            return DateTime.Now.ToString("yyyyMMddHHmmssfff");
        }
        #endregion		
    }	
}
