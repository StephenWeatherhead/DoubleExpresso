using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace DoubleExpresso
{
    public interface IExpressoEvaluator
    {
        double Evaluate(string p_ExpressionString, List<ExpressoVar> p_Variables, List<IExpressoFunc> p_Functions);
    }
    public class ExpressoVar
    {
        public string Name { get; set; }
        public double Value { get; set; }
    }
    public interface IExpressoFunc
    {
        string Name { get; }
        int NumberOfParams { get; }
        double Execute(List<double> p_Parameters);
    }
}
