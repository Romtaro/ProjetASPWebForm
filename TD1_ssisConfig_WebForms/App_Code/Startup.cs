using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TD1_ssisConfig_WebForms.Startup))]
namespace TD1_ssisConfig_WebForms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
