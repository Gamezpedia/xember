package ember
{
	import org.robotlegs.core.IInjector;
	
	public class EntitySystem
	{
		
		private var _entities:Entities;
		private var _nodes:NodesManager;
		private var _systems:Systems;

		public function EntitySystem(injector:IInjector)
		{
			_entities = new Entities();
			_nodes = new NodesManager(_entities);
			_systems = new Systems(injector);
			
			injector.mapValue(EntitySystem, this);
		}
		
		public function createEntity(name:String = ""):Entity
		{
			return _entities.create(name);
		}
		
		public function getEntity(name:String):Entity
		{
			return _entities.get(name);
		}

		public function containsEntity(entity:Entity):Boolean
		{
			return _entities.contains(entity as Entity);
		}

		public function removeEntity(entity:Entity):void
		{
			_entities.remove(entity as Entity);
		}

		public function addSystem(systemClass:Class):void
		{
			_systems.addSystem(systemClass);
		}

		public function getNodes(nodeClass:Class):Nodes
		{
			return _nodes.get(nodeClass);
		}
		
	}
}