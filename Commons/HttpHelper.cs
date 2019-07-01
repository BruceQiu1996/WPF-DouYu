using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace DouyuWPF.Commons
{
    public class HttpHelper
    {
        ILog _logger = log4net.LogManager.GetLogger(typeof(HttpHelper));
        private readonly Encoding ENCODING = Encoding.UTF8;
        public string HTTPJsonGet(string url)
        {
            string result = string.Empty;
            try
            {
                this._logger.InfoFormat("HTTPJsonPostUrl:{0}", url);
                HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
                request.ContentType = "application/json";
                request.Method = "GET";
                HttpWebResponse resp = request.GetResponse() as HttpWebResponse;
                System.IO.StreamReader reader = new System.IO.StreamReader(resp.GetResponseStream(), this.ENCODING);
                result = reader.ReadToEnd();
            }
            catch (Exception ex)
            {
                this._logger.ErrorFormat("HTTPJsonGet异常:{0}", ex.Message);
            }
            return result;
        }
    }
}
