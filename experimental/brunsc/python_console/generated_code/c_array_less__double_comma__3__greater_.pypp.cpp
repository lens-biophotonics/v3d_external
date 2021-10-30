// This file has been generated by Py++.

#include "boost/python.hpp"
#include "wrappable_v3d.h"
#include "convert_c_array_struct.h"
#include "c_array_less__double_comma__3__greater_.pypp.hpp"

namespace bp = boost::python;

void register_c_array_less__double_comma__3__greater__class(){

    bp::class_< c_array< double, 3 > >( "c_array_less__double_comma__3__greater_", "\n Light wrapper for C-arrays, to make them easier\n to expose in python.\n\n Runtime performance should not be affected:\n No virtual methods; no additional data members;\n All methods are inline.\n" )    
        .def( 
            "size"
            , (int (*)(  ))( &::c_array< double, 3 >::size ) )    
        .staticmethod( "size" )    
        .def(bp::indexing::container_suite<
                            c_array<double, 3>, bp::indexing::all_methods,
                            list_algorithms<c_array_struct_container_traits< c_array<double, 3> > > >());

}
