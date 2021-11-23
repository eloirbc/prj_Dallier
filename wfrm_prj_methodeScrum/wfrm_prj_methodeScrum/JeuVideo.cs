using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace wfrm_prj_methodeScrum
{
    class JeuVideo
    {
        public string id { get; set; }
        public string title {  get; set; }
        public string etat {  get; set; }
        public string console {  get; set; }

        public JeuVideo(string leID, string leTitre, string leEtat, string laConsole)
        {
            id = leID;
            title = leTitre;
            etat = leEtat;
            console = laConsole;
        }
    }
}
