using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Models;
using System.Data;

namespace BLL
{
    public class syBLL
    {
        public static int ExecuteNonQuery(string sqlText, params SqlParameter[] paras)
        {
            return DBHelper.ExecuteNonQuery(sqlText, paras);
        }
        public static object ExecuteScalar(string sqlText, params SqlParameter[] paras)
        {
            return DBHelper.ExecuteScalar(sqlText, paras);
        }
        public static SqlDataReader ExecuteReader(string sqlText, params SqlParameter[] paras)
        {
            return DBHelper.ExecuteReader(sqlText, paras);
        }
        public static DataTable ExecuteDataTable(string sqlText, params SqlParameter[] paras)
        {
            return DBHelper.ExecuteDataTable(sqlText, paras);
        }
    }
}
