import org.bimserver.models.ifc2x3tc1.*;


make_query("net.flaviusb", "floorexample") do
  stories = model.getAll(IfcBuildingStorey.class)
  lowestElevation = 0.0
  lowestStorey = nil
  stories.each do |storey: IfcBuildingStorey|
    if (lowestStorey === nil || (lowestElevation > storey.getElevation()))
      lowestElevation = storey.getElevation()
      lowestStorey = storey
    end
  end
  if (!(lowestStorey === nil))
    lowestStorey.getContainsElements()
  end
  modelHelper.getTargetModel()
end

