﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;

namespace Revamp_LatestSightings
{
    public class Encription
    {
        public static string Encrypt(string input)
        {
            string key = "rtgfewrewqrss323";
            byte[] inputArray = UTF8Encoding.UTF8.GetBytes(input);
            TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider();
            tripleDES.Key = UTF8Encoding.UTF8.GetBytes(key);
            tripleDES.Mode = CipherMode.ECB;
            tripleDES.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tripleDES.CreateEncryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length);
            tripleDES.Clear();
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }

        public static string Decrypt(string input)
        {
            string key = "rtgfewrewqrss323";
            byte[] inputArray = Convert.FromBase64String(input);
            TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider();
            tripleDES.Key = UTF8Encoding.UTF8.GetBytes(key);
            tripleDES.Mode = CipherMode.ECB;
            tripleDES.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tripleDES.CreateDecryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length);
            tripleDES.Clear();
            return UTF8Encoding.UTF8.GetString(resultArray);
        }
    }
}