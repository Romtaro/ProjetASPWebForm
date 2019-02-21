using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ISSConfig.Startup))]
namespace ISSConfig
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
