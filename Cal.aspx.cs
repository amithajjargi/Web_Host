using System;
using System.Web.UI.WebControls;

namespace CalculatorWebForm
{
    public partial class _Default : System.Web.UI.Page
    {
        private static Cal calc = new Cal();
        private static int keynum = 0;
        private static bool newInput = true;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display.Text = "0";
            }
        }

        protected void Number_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (newInput)
            {
                Display.Text = string.Empty;
                newInput = false;
            }
            Display.Text += button.Text;
        }

        protected void Operator_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;

            if (!newInput)
            {
                keynum = int.Parse(Display.Text);
                calc.CurrentValue = keynum;
                keynum = 0;
                newInput = true;
            }

            switch (button.Text)
            {
                case "+":
                    calc.Add();
                    break;
                case "-":
                    calc.Subtract();
                    break;
                case "*":
                    calc.Multiply();
                    break;
                case "/":
                    calc.Divide();
                    break;
            }

            Display.Text = calc.CurrentValue.ToString();
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            calc.Clear();
            Display.Text = "0";
            keynum = 0;
            newInput = true;
        }

        protected void Equals_Click(object sender, EventArgs e)
        {
            if (!newInput)
            {
                keynum = int.Parse(Display.Text);
                calc.CurrentValue = keynum;
                keynum = 0;
                newInput = true;
            }
            calc.Equals();
            Display.Text = calc.CurrentValue.ToString();

        }
    }

    public class Cal
    {
        public int CurrentValue;
        private int LastValue;
        private char LastOperation;

        public Cal()
        {
            CurrentValue = 0;
            LastValue = 0;
            LastOperation = '+';
        }

        public void Add()
        {
            PerformOperation();
            LastOperation = '+';
            LastValue = CurrentValue;
            CurrentValue = 0;
        }

        public void Subtract()
        {
            PerformOperation();
            LastOperation = '-';
            LastValue = CurrentValue;
            CurrentValue = 0;
        }

        public void Multiply()
        {
            PerformOperation();
            LastOperation = '*';
            LastValue = CurrentValue;
            CurrentValue = 0;
        }

        public void Divide()
        {
            PerformOperation();
            LastOperation = '/';
            LastValue = CurrentValue;
            CurrentValue = 0;
        }

        public void Equals()
        {
            PerformOperation();
            LastOperation = '+';
            LastValue = 0;
        }

        public void Clear()
        {
            CurrentValue = 0;
            LastValue = 0;
            LastOperation = '+';
        }

        private void PerformOperation()
        {
            switch (LastOperation)
            {
                case '+':
                    CurrentValue += LastValue;
                    break;
                case '-':
                    CurrentValue -= LastValue;
                    break;
                case '*':
                    CurrentValue *= LastValue;
                    break;
                case '/':
                    if (CurrentValue == 0)
                    {
                        CurrentValue = 0;
                    }
                    else
                    {
                        CurrentValue = LastValue / CurrentValue;
                    }
                    break;
            }
        }
    }
}
