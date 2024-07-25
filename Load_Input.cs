using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework; // Support Library
using SbsSW.SwiPlCs; // Lib connect with prolog
using System.Text.RegularExpressions; // Support Library

namespace Load_Input
{
    class LoadInput
    {
        public void LoadFile(string s)
        {
            s = "Consult ('" + s + "')";
            string query = s.Replace("\\", "//");// process a link
            string[] p = { "-q", "-f", query };
            PlEngine.Initialize(p);
            try
            {
                PlQuery q = new PlQuery(query);
                Assert.IsTrue(q.NextSolution());
            }
            catch (SbsSW.SwiPlCs.Exceptions.PlLibException e)
            {
                System.Windows.Forms.MessageBox.Show(e.ToString(), "Error");
            }
        }
        public string Result(string s)
        {
            s.Trim();
            Regex r = new Regex(@"[A-Z_][a-zA-Z_]*");
            MatchCollection mathches = r.Matches(s);
            string result = "";
            try
            {
                PlQuery q = new PlQuery(s);
                bool Has = false;
                foreach (PlQueryVariables v in q.SolutionVariables)
                {
                    Has = true;
                    foreach (Match match in mathches)
                        result += match.ToString() + "=" + v[match.ToString()].ToString() + ";";
                }
                if (mathches.Count == 0)
                    return Has ? "True" : "False";
                return result;
            }
            catch (SbsSW.SwiPlCs.Exceptions.PlException ex)
            {
                return "Error Query:" + ex.Message;
            }
        }
    }
}
