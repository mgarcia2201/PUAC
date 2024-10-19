using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PUACPG2_1.Startup))]
namespace PUACPG2_1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }

    }
}
