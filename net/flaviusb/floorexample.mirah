import org.bimserver.emf.IfcModelInterface
import org.bimserver.plugins.ModelHelper
import org.bimserver.plugins.Reporter
import org.bimserver.emf.IdEObject
import org.bimserver.emf.IfcModelInterfaceException

package net.flaviusb do
  class floorexample
    implements nz.ac.auckland.cs.QueryInterface
    
    def query(model: IfcModelInterface, reporter: Reporter, modelHelper: ModelHelper): IfcModelInterface
      return nil
    end
  end
end
