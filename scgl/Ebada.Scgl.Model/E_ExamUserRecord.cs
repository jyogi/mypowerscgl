/**********************************************
这是代码自动生成的，如果重新生成，所做的改动将会丢失
系统:Ebada物流企业ERP
模块:系统平台
Ebada.com 版权所有
生成者：Rabbit
生成时间:2013/9/27 21:18:10
***********************************************/

using System;
using System.Threading;
using System.ComponentModel;
namespace Ebada.Scgl.Model
{
    /// <summary>
    ///[E_ExamUserRecord]业务实体类
    ///对应表名:E_ExamUserRecord
    /// </summary>
    [Serializable]
    public class E_ExamUserRecord
    {
        
        #region Private 成员
        private string _id=Newid(); 
        private string _orgname=String.Empty; 
        private string _orgcode=String.Empty; 
        private string _name=String.Empty; 
        private string _post=String.Empty; 
        private string _createman=String.Empty; 
        private DateTime _createdate=new DateTime(1900,1,1); 
        private byte[] _bigdata=new byte[]{}; 
        private byte[] _worddata=new byte[]{}; 
        private int _sequence=0; 
        private string _examrecord=String.Empty; 
        private string _byscol1=String.Empty; 
        private string _byscol2=String.Empty; 
        private string _byscol3=String.Empty; 
        private string _byscol4=String.Empty; 
        private string _byscol5=String.Empty; 
        private string _remark=String.Empty; 
        private byte[] _rowversion=new byte[]{};   
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
        /// 属性名称：Name
        /// 属性描述：姓名
        /// 字段信息：[Name],nvarchar
        /// </summary>
        [DisplayNameAttribute("姓名")]
        public string Name
        {
            get { return _name; }
            set
            {
                if (value == null) return;
                if (value.ToString().Length > 500)
                    throw new Exception("[姓名]长度不能大于500!");
                if (_name as object == null || !_name.Equals(value))
                {
                    _name = value;
                }
            }
        }
       
  
        /// <summary>
        /// 属性名称：OrgCode
        /// 属性描述：供电所代码
        /// 字段信息：[OrgCode],nvarchar
        /// </summary>
        [Browsable(false)]
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
        /// 属性名称：Post
        /// 属性描述：职务
        /// 字段信息：[Post],nvarchar
        /// </summary>
        [DisplayNameAttribute("职务")]
        public string Post
        {
            get { return _post; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 100)
                throw new Exception("[职务]长度不能大于100!");
                if (_post as object == null || !_post.Equals(value))
                {
                    _post = value;
                }
            }			 
        }
        /// <summary>
        /// 属性名称：OrgName
        /// 属性描述：供电所名称
        /// 字段信息：[OrgName],nvarchar
        /// </summary>
        [DisplayNameAttribute("附件")]
        public string OrgName
        {
            get { return _orgname; }
            set
            {
                if (value == null) return;
                if (value.ToString().Length > 50)
                    throw new Exception("[附件]长度不能大于50!");
                if (_orgname as object == null || !_orgname.Equals(value))
                {
                    _orgname = value;
                }
            }
        }
  
        /// <summary>
        /// 属性名称：CreateMan
        /// 属性描述：创建人
        /// 字段信息：[CreateMan],nvarchar
        /// </summary>
        [DisplayNameAttribute("创建人")]
        public string CreateMan
        {
            get { return _createman; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 50)
                throw new Exception("[创建人]长度不能大于50!");
                if (_createman as object == null || !_createman.Equals(value))
                {
                    _createman = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：CreateDate
        /// 属性描述：创建日期
        /// 字段信息：[CreateDate],datetime
        /// </summary>
        [DisplayNameAttribute("创建日期")]
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
        /// 属性名称：BigData
        /// 属性描述：
        /// 字段信息：[BigData],image
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("")]
        public byte[] BigData
        {
            get { return _bigdata; }
            set
            {			
                if (_bigdata as object == null || !_bigdata.Equals(value))
                {
                    _bigdata = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：WordData
        /// 属性描述：
        /// 字段信息：[WordData],image
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("")]
        public byte[] WordData
        {
            get { return _worddata; }
            set
            {			
                if (_worddata as object == null || !_worddata.Equals(value))
                {
                    _worddata = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：Sequence
        /// 属性描述：序号
        /// 字段信息：[Sequence],int
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("序号")]
        public int Sequence
        {
            get { return _sequence; }
            set
            {			
                if (_sequence as object == null || !_sequence.Equals(value))
                {
                    _sequence = value;
                }
            }			 
        }
  
        /// <summary>
        /// 属性名称：ExamRecord
        /// 属性描述：考试记录
        /// 字段信息：[ExamRecord],nvarchar
        /// </summary>
        [DisplayNameAttribute("考试记录")]
        public string ExamRecord
        {
            get { return _examrecord; }
            set
            {			
                if(value==null)return;
                if( value.ToString().Length > 1073741823)
                throw new Exception("[考试记录]长度不能大于1073741823!");
                if (_examrecord as object == null || !_examrecord.Equals(value))
                {
                    _examrecord = value;
                }
            }			 
        }

      
        /// <summary>
        /// 属性名称：BySCol1
        /// 属性描述：备用1
        /// 字段信息：[BySCol1],nvarchar
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("备用1")]
        public string BySCol1
        {
            get { return _byscol1; }
            set
            {
                if (value == null) return;
                if (value.ToString().Length > 200)
                    throw new Exception("[备用1]长度不能大于200!");
                if (_byscol1 as object == null || !_byscol1.Equals(value))
                {
                    _byscol1 = value;
                }
            }
        }

        /// <summary>
        /// 属性名称：BySCol2
        /// 属性描述：备用2
        /// 字段信息：[BySCol2],nvarchar
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("备用2")]
        public string BySCol2
        {
            get { return _byscol2; }
            set
            {
                if (value == null) return;
                if (value.ToString().Length > 200)
                    throw new Exception("[备用2]长度不能大于200!");
                if (_byscol2 as object == null || !_byscol2.Equals(value))
                {
                    _byscol2 = value;
                }
            }
        }

        /// <summary>
        /// 属性名称：BySCol3
        /// 属性描述：备用3
        /// 字段信息：[BySCol3],nvarchar
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("备用3")]
        public string BySCol3
        {
            get { return _byscol3; }
            set
            {
                if (value == null) return;
                if (value.ToString().Length > 200)
                    throw new Exception("[备用3]长度不能大于200!");
                if (_byscol3 as object == null || !_byscol3.Equals(value))
                {
                    _byscol3 = value;
                }
            }
        }

        /// <summary>
        /// 属性名称：BySCol4
        /// 属性描述：备用4
        /// 字段信息：[BySCol4],nvarchar
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("备用4")]
        public string BySCol4
        {
            get { return _byscol4; }
            set
            {
                if (value == null) return;
                if (value.ToString().Length > 200)
                    throw new Exception("[备用4]长度不能大于200!");
                if (_byscol4 as object == null || !_byscol4.Equals(value))
                {
                    _byscol4 = value;
                }
            }
        }

        /// <summary>
        /// 属性名称：BySCol5
        /// 属性描述：备用5
        /// 字段信息：[BySCol5],nvarchar
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("备用5")]
        public string BySCol5
        {
            get { return _byscol5; }
            set
            {
                if (value == null) return;
                if (value.ToString().Length > 200)
                    throw new Exception("[备用5]长度不能大于200!");
                if (_byscol5 as object == null || !_byscol5.Equals(value))
                {
                    _byscol5 = value;
                }
            }
        }

        /// <summary>
        /// 属性名称：Remark
        /// 属性描述：备注
        /// 字段信息：[Remark],nvarchar
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("备注")]
        public string Remark
        {
            get { return _remark; }
            set
            {
                if (value == null) return;
                if (value.ToString().Length > 200)
                    throw new Exception("[备注]长度不能大于200!");
                if (_remark as object == null || !_remark.Equals(value))
                {
                    _remark = value;
                }
            }
        }

        /// <summary>
        /// 属性名称：RowVersion
        /// 属性描述：时间戳
        /// 字段信息：[RowVersion],timestamp
        /// </summary>
        [Browsable(false)]
        [DisplayNameAttribute("时间戳")]
        public byte[] RowVersion
        {
            get { return _rowversion; }
            set
            {
                if (_rowversion as object == null || !_rowversion.Equals(value))
                {
                    _rowversion = value;
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
