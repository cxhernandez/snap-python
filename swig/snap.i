// snap.i
%module snap
%{

#include "Snap.h"

#include "printgraph.h"
#include "snapswig.h"

#include "goodgraph.cpp"
#include "getassessment.cpp"
#include "swig-TNEAGraph.cpp"

%}

%ignore TOnExeStop;
%ignore TPt::TPt;
%ignore TPt::LoadXml;
%ignore TPt::SaveXml;
%ignore TPt::operator==;
%ignore TPt::operator!=;
%ignore TPt::operator<;
%ignore TPt::GetPrimHashCd;
%ignore TPt::GetSecHashCd;
%ignore TPt::Clone;

%ignore TChA::LoadXml;
%ignore TMem::LoadXml;

%ignore GetStr;

%ignore TFInOut;
%ignore TFRnd;
%ignore TFile::Copy;
%ignore TFile::GetLastAccessTm;
%ignore TFile::GetLastWriteTm;
%ignore TFile::GetCreateTm;
%ignore TFile::GetSize;

%ignore TNGraph::GetEI(int const&) const;
%ignore TBPGraph::HasFlag(const TGraphFlag& Flag) const;
%ignore TNEGraph::GetSmallGraph();
%ignore TNEAGraph::GetSmallGraph();
%ignore TBPGraph::GetEI(int const&) const;
%ignore TUNGraph::GetEI(int const&) const;

%include "bd.h"
%include "dt.h"
%include "fl.h"
%include "graph.h"
%include "cncom.h"
%include "ggen.h"
%include "gio.h"
%include "alg.h"


%include "printgraph.h"
%include "snapswig.h"

%include "goodgraph.cpp"
%include "getassessment.cpp"
%include "swig-TNEAGraph.cpp"

%extend TNGraph {
        TNGraphNodeI BegNI() {
                return TNGraphNodeI($self->BegNI());
        }
        TNGraphNodeI EndNI() {
                return TNGraphNodeI($self->EndNI());
        }
        TNGraphEdgeI BegEI() {
                return TNGraphEdgeI($self->BegEI());
        }
        TNGraphEdgeI EndEI() {
                return TNGraphEdgeI($self->EndEI());
        }
};

%extend TUNGraph {
        TUNGraphNodeI BegNI() {
                return TUNGraphNodeI($self->BegNI());
        }
        TUNGraphNodeI EndNI() {
                return TUNGraphNodeI($self->EndNI());
        }
        TUNGraphEdgeI BegEI() {
                return TUNGraphEdgeI($self->BegEI());
        }
        TUNGraphEdgeI EndEI() {
                return TUNGraphEdgeI($self->EndEI());
        }
};

// Directed Graphs
%template(PNGraph) TPt< TNGraph >;

%template(PercentDegree_PNGraph) PercentDegree<PNGraph>;
%template(PercentMxWcc_PNGraph) PercentMxWcc<PNGraph>;
%template(PercentMxScc_PNGraph) PercentMxScc<PNGraph>;

%template(LoadEdgeList_PNGraph) TSnap::LoadEdgeList<PNGraph>;
%template(PrintGraphStatTable_PNGraph) PrintGraphStatTable<PNGraph>;
%template(GenRndGnm_PNGraph) TSnap::GenRndGnm<PNGraph>;
%template(MxWccSz_PNGraph) TSnap::GetMxWccSz<PNGraph>;
%template(MxSccSz_PNGraph) TSnap::GetMxScc<PNGraph>;

%template(NodesGTEDegree_PNGraph) NodesGTEDegree<PNGraph>;
%template(NodesGTEDegree_PUNGraph) NodesGTEDegree<PUNGraph>;

%template(MxDegree_PUNGraph) MxDegree<PUNGraph>;
%template(MxDegree_PNGraph) MxDegree<PNGraph>;

// Undirected Graphs
%template(PUNGraph) TPt< TUNGraph >;

%template(LoadEdgeList_PUNGraph) TSnap::LoadEdgeList<PUNGraph>;
%template(PrintGraphStatTable_PUNGraph) PrintGraphStatTable<PUNGraph>;

%template(GenRndGnm_PUNGraph) TSnap::GenRndGnm<PUNGraph>;
%template(MxSccSz_PUNGraph) TSnap::GetMxScc<PUNGraph>;
%template(MxWccSz_PUNGraph) TSnap::GetMxWccSz<PUNGraph>;

// TNEAGraphs
%template(PNEAGraph) TPt< TNEAGraph >;

// TNEAGraph Functions for alg.h
%template(CntInDegNodes_PNEAgraph) TSnap::CntInDegNodes<PNEAGraph>;
%template(CntOutDegNodes_PNEAgraph) TSnap::CntOutDegNodes<PNEAGraph>;
%template(CntDegNodes_PNEAgraph) TSnap::CntDegNodes<PNEAGraph>;
%template(CntNonZNodes_PNEAgraph) TSnap::CntNonZNodes<PNEAGraph>;
%template(CntEdgesToSet_PNEAgraph) TSnap::CntEdgesToSet<PNEAGraph>;

%template(GetMxDegNId_PNEAgraph) TSnap::GetMxDegNId<PNEAGraph>;
%template(GetMxInDegNId_PNEAgraph) TSnap::GetMxInDegNId<PNEAGraph>;
%template(GetMxOutDegNId_PNEAgraph) TSnap::GetMxOutDegNId<PNEAGraph>;

%template(GetInDegCnt_PNEAgraph) TSnap::GetInDegCnt<PNEAGraph>;
%template(GetInDegCnt_PNEAgraph) TSnap::GetInDegCnt<PNEAGraph>;
%template(GetOutDegCnt_PNEAgraph) TSnap::GetOutDegCnt<PNEAGraph>;
%template(GetOutDegCnt_PNEAgraph) TSnap::GetOutDegCnt<PNEAGraph>;
%template(GetDegCnt_PNEAgraph) TSnap::GetDegCnt<PNEAGraph>;
%template(GetDegCnt_PNEAgraph) TSnap::GetDegCnt<PNEAGraph>;
%template(GetDegSeqV_PNEAgraph) TSnap::GetDegSeqV<PNEAGraph>;
%template(GetDegSeqV_PNEAgraph) TSnap::GetDegSeqV<PNEAGraph>;

%template(GetNodeInDegV_PNEAgraph) TSnap::GetNodeInDegV<PNEAGraph>;
%template(GetNodeOutDegV_PNEAgraph) TSnap::GetNodeOutDegV<PNEAGraph>;

%template(CntUniqUndirEdges_PNEAgraph) TSnap::CntUniqUndirEdges<PNEAGraph>;
%template(CntUniqDirEdges_PNEAgraph) TSnap::CntUniqDirEdges<PNEAGraph>;
%template(CntUniqBiDirEdges_PNEAgraph) TSnap::CntUniqBiDirEdges<PNEAGraph>;
%template(CntSelfEdges_PNEAgraph) TSnap::CntSelfEdges<PNEAGraph>;


