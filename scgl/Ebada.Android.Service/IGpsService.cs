﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;
using System.ServiceModel.Web;
using Ebada.Scgl.Model;
using System.IO;

namespace Ebada.Android.Service {
    [ServiceContract]
    public interface IGpsService {
        /// <summary>
        /// 验证用户
        /// </summary>
        /// <param name="id"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        [OperationContract]
        [WebGet(RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, UriTemplate = "GetVer", BodyStyle = WebMessageBodyStyle.Bare)]
        string GetVersion();
        /// <summary>
        /// 获取设备信息
        /// </summary>
        /// <param name="gdscode"></param>
        /// <returns></returns>
        [OperationContract]
        [WebInvoke(RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, Method = "POST", UriTemplate = "GetDevice")]
        g_device GetDevice(g_device dev);
        
        [OperationContract]
        [WebInvoke(UriTemplate = "UpPosition", Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        string UpPosition(g_position pos);

        [OperationContract]
        [WebInvoke(UriTemplate = "GetPosition", Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        g_position_now GetPosition(int id);
        [OperationContract]
        [WebInvoke(UriTemplate = "GetLocation/{address}", Method = "POST", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        Ebada.Android.Service.GpsService.location GetLocation(string address);
        //[OperationContract]
        //[WebInvoke(UriTemplate = "UploadFile/{id}/{type}",Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        //string UploadFile(string id,string type, Stream fileContents);

    }

}
