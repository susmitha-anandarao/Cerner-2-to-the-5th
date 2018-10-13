// cerner_2^5_2018

string html = string.Empty;
string url = @"https://randomuser.me/api/?inc=gender,name,nat";

HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
request.AutomaticDecompression = DecompressionMethods.GZip;

using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
using (Stream stream = response.GetResponseStream())
using (StreamReader reader = new StreamReader(stream))
{
    html = reader.ReadToEnd();
}

Console.WriteLine(html);