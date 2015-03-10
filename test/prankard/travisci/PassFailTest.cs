using System;
using NUnit.Framework;

namespace prankard.travisci
{
	[TestFixture]
	public class PassFailTest
	{
		public PassFail passFail;

		[SetUp]
		public void SetUp()
		{
			passFail = new PassFail();
		}

		[Test]
		public void test_pass_returns_true()
		{
			Assert.That (passFail.Pass(), Is.True);
		}

		[Test]
		public void test_fail_returns_false()
		{
			Assert.That (passFail.Fail (), Is.False);
		}
	}
}

