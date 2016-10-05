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
    lowestStorey.getContainsElements().each do |containment|
      containment.getRelatedElements().each do |products|
        modelHelper.copy(products, false)
      end
    end
  end
  model.getAll(IfcSpace.class).each do |space|
    modelHelper.copy(space, false)
    # First we need to get the various coordinates, to compute the new coordinates
    space.getReferencesElements().each do |connection: IfcRelReferencedInSpatialStructure|
      #connection.getRelatedElements.only_type do |references_element: IfcLocalPlacement|
#      references_element.getRelativePlacement().each do |local_placement|
#        placement = local_placement.getLocation()
#        case placement
#        when IfcAxis2Placement3D
#          point = 
#            case point
#            when IfcCartesianPoint
#              # We have the point
#              point
#            end
#          end
        end
      end
    end
#    # Then we get all of the child elements
#    space.getContainsElements().each do |contained_element|
#      case contained_element
#
#      end
#    end
#    space.getChildren().each do |child|
#      case child
#      when IfcSlab
#        modelHelper.copy(child, false)
#      when IfcWallStandardCase
#        modelHelper.copy(child, false)
#      when IfcWall
#        modelHelper.copy(child, false)
#      when IfcDoor
#        modelHelper.copy(child, false)
#      when IfcWindow
#        modelHelper.copy(child, false)
#      end
#    end
#  end
  modelHelper.getTargetModel()
end

