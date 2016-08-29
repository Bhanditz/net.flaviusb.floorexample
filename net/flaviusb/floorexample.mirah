import org.bimserver.models.ifc2x3tc1.IfcElementQuantity;


make_query("net.flaviusb", "floorexample") do | |
  stories = model.getAll(IfcElementQuantity.class)
  model
end

