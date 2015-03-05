package org.jumpmind.symmetric.is.core.utils;

import java.util.Date;

import org.jumpmind.symmetric.is.core.model.Agent;
import org.jumpmind.symmetric.is.core.model.AgentDeployment;
import org.jumpmind.symmetric.is.core.model.Component;
import org.jumpmind.symmetric.is.core.model.ComponentFlow;
import org.jumpmind.symmetric.is.core.model.ComponentFlowNode;
import org.jumpmind.symmetric.is.core.model.ComponentFlowNodeLink;
import org.jumpmind.symmetric.is.core.model.ComponentFlowVersion;
import org.jumpmind.symmetric.is.core.model.ComponentVersion;
import org.jumpmind.symmetric.is.core.model.Connection;
import org.jumpmind.symmetric.is.core.model.Folder;
import org.jumpmind.symmetric.is.core.model.Setting;
import org.jumpmind.symmetric.is.core.runtime.component.NoOpProcessor;

public class TestUtils {
    
    public static Folder createFolder(String name) {    	
    	Folder data = new Folder();
    	data.setCreateBy("Test");
    	data.setCreateTime(new Date());
    	data.setName(name);
    	data.setId(name);
    	return data;
    }
    
    public static ComponentFlowVersion createFlow(String name, Folder folder) {    	
    	ComponentFlow flow = createComponentFlow(name, folder);
    	flow.setCreateBy("Test");
    	flow.setCreateTime(new Date());
    	flow.setId(name);
    	ComponentFlowVersion flowVersion = new ComponentFlowVersion(flow);
    	return flowVersion;
    }
    
    public static void addNodeToComponentFlow(ComponentFlowVersion flow, ComponentFlowNode node) {    	
    	flow.getComponentFlowNodes().add(node);    	
    }
    
    public static ComponentFlowNode createNoOpProcessorComponentFlowNode(ComponentFlowVersion flowVersion, 
    		String name, Folder folder) {
    	Component component = createComponent(NoOpProcessor.TYPE, false);
    	ComponentVersion componentVersion = createComponentVersion(component, null, (Setting[]) null);
    	ComponentFlowNode node = new ComponentFlowNode(componentVersion);
    	node.setComponentFlowVersionId(flowVersion.getId());
    	node.setComponentVersionId(componentVersion.getId());
    	node.setCreateBy("Test");
    	node.setCreateTime(new Date());
    	node.setId(name);
    	node.setLastModifyBy("Test");
    	node.setLastModifyTime(new Date());
    	return node;
    }
    
    public static Agent createAgent(String name, Folder folder) {    	
        Agent agent = new Agent(folder);
    	agent.setCreateBy("Test");
    	agent.setCreateTime(new Date());
    	agent.setFolderId(folder.getId());
    	agent.setHeartbeatTime(new Date());
    	agent.setHost("localhost");
    	agent.setId(name);
    	agent.setLastModifyBy("Test");
    	agent.setLastModifyTime(new Date());
    	agent.setLastStartTime(new Date());
    	agent.setName(name);
    	return agent;
    }
    
    public static AgentDeployment createAgentDeployment(String name, Agent agent, ComponentFlowVersion flow) {    	
        AgentDeployment deployment = new AgentDeployment(flow);
    	deployment.setAgentId(agent.getId());
    	deployment.setComponentFlowVersionId(flow.getId());
    	deployment.setCreateBy("Test");
    	deployment.setCreateTime(new Date());
    	deployment.setId(name);
    	deployment.setLastModifyBy("Test");
    	deployment.setLastModifyTime(new Date());
    	return deployment;    			
    }

    public static ComponentFlowNodeLink createComponentLink(ComponentFlowNode srcNode, ComponentFlowNode destNode) {    	
    	ComponentFlowNodeLink link = new ComponentFlowNodeLink(srcNode.getId(), destNode.getId());
    	return link;
    }
    
    private static ComponentFlow createComponentFlow(String name, Folder folder) {    	
        ComponentFlow componentFlow = new ComponentFlow(folder);
    	componentFlow.setCreateBy("Test");
    	componentFlow.setCreateTime(new Date());
    	componentFlow.setFolderId(folder.getId());
    	componentFlow.setId("ComponentFlowId");
    	componentFlow.setName("ComponentFlow");
    	return componentFlow;
    }
    
    public static Component createComponent(String type, boolean shared) {
    	Component component = new Component();
    	component.setType(type);
    	component.setShared(shared);
    	component.setCreateBy("Test");
    	component.setCreateTime(new Date());
    	component.setLastModifyBy("Test");
    	component.setCreateTime(new Date());    	
    	return component;
    }
    
	public static ComponentVersion createComponentVersion(Component component,
			Connection connection, Setting... settings) {
        ComponentVersion componentVersion = new ComponentVersion(component,
                connection, null, null, settings);
        componentVersion.setComponentId(component.getId());
        componentVersion.setCreateBy("Test");
        componentVersion.setCreateTime(new Date());
        componentVersion.setId("Test");
        componentVersion.setLastModifyBy("Test");
        componentVersion.setLastModifyTime(new Date());
		// TODO: allow passing in of a model
        componentVersion.setInputModelVersiondId(null);
        componentVersion.setOutputModelVersionId(null);
		return componentVersion;
	}

}
